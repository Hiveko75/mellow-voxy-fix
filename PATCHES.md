# Mellow v3.5 Fix — Voxy fixes for Mellow 3.5 (MC 26.2 / 26.3)

A fix proposal for [Mellow](https://modrinth.com/shader/mellow) by TheCMK, built on the
Mellow v3.5 Modrinth release. It fixes the crash and rendering problems with Voxy on
Minecraft 26.3. This is not an official Mellow release and is not affiliated with or
endorsed by TheCMK; the original license files are kept unchanged.

- The first commit is the unmodified 3.5 release, so the diff shows exactly what changed.
- Every change is marked `[voxy-fix]` in the shader files.
- The changes were made on the Modrinth release (optimized files), not on the
  [Codeberg source](https://codeberg.org/TheCMK/mellow-shader); upstream would need to
  apply them there.

Tested in game with Minecraft 26.3, Fabric, Iris 1.11.7, Sodium 0.9.3-beta.1,
Voxy 0.2.20-beta and an NVIDIA RTX 5090 (driver 621.24): no crash, Voxy LODs render
with shading, translucent LOD water and glass work, and no compiler output in chat.
Change 5 is for Minecraft 26.2 (Iris 1.11.4, Sodium 0.9.2, Voxy 0.2.19-beta).

## Changes

1. **Crash when enabling Mellow with Voxy** — `program/voxy.json`,
   `voxy_terrain.glsl`, `voxy_water.glsl`.
   `colortex8` is mapped to `minecraft:textures/environment/clouds.png` and was listed
   in the Voxy samplers. Iris loads `minecraft:` textures lazily, so Voxy's first bind
   uploaded it while Sodium's terrain render pass was open, which 26.3 forbids:
   `IllegalStateException: Close the existing render pass before performing
   additional commands` ("Uploading texture"). `colortex8` is no longer bound for Voxy,
   and the blocky-cloud function returns no clouds in the Voxy pass. Side effect: with
   Cloud Style = Blocky, clouds are not drawn in LOD reflections/fog.

2. **Compile error with Water Texture Mode 2** — `voxy_water.glsl`.
   The Voxy translucent shader used an undefined `TweakedLM`
   (`error C1503: undefined variable "TweakedLM"`), so Voxy fell back to its unshaded
   pipeline. Now matches `gbuffers_water`: plain water colour, lit once by
   `tweak_lightmap`.

3. **`"texcoord" might be used before being initialized`** — `voxy_terrain.glsl`,
   `voxy_water.glsl`.
   `dCoordx`/`dCoordy` were global initializers taking `dFdx(texcoord)` before Voxy
   sets `texcoord`; NVIDIA warns and Voxy posts compiler output to chat. They are now
   zero gradients: Voxy exits helper invocations before the patch runs, so derivatives
   there aren't valid anyway.

4. **Translucent Voxy pass depth reads** — `voxy_water.glsl`, `deferred1.fsh`.
   - `dhDepthTex0` now maps to `vxDepthTexOpaque` instead of `vxDepthTexTrans`, which
     is the depth attachment of the pass being drawn (a GPU feedback loop).
   - Inside the Voxy pass, `depthtex1` is redirected to `depthtex0` and `USE_LQ_DEPTH`
     (gaux2) is disabled: Voxy draws at the end of Sodium's cutout pass, before Iris
     copies `depthtex1` and before `deferred` writes gaux2, so both held last frame's
     data.
   - The LOD-translucent overlay test in `deferred1` is relaxed from `depthtex1 >= 1`
     to `>= 0.99999`, so the reverse-Z far plane still counts as sky after Iris inverts
     it.

5. **Black sky with Voxy on Minecraft 26.2** — every program that reads Voxy's depth
   (`deferred1`, `composite*`, `gbuffers_*`, `dh_*`, `voxy_*`, `lib/distant_horizons.glsl`,
   `global/outline.glsl`).
   With Voxy 0.2.19 (the Voxy for 26.2) the Voxy depth textures hold 0 where no LOD was drawn.
   Mellow reads Voxy's depth wherever the vanilla depth is sky, and took that 0 for terrain at the
   near plane, so the whole sky came out black (with Voxy rendering off it was fine). Mellow
   already had this exact case for AMD drivers (`if(Depth <= 0) Depth = 1.0;` under
   `MC_GL_RENDERER_RADEON`); that guard now also applies whenever Voxy is active, and the depth
   gathers for outlines and the vanilla-cloud LOD test treat 0 as sky too. No change on 26.3,
   where Voxy's empty depth is already 1.

## Building

GitHub Actions packages the pack on every push (Actions → latest run → artifact
**Mellow v3.5 Fix**, which is the shader pack itself). Pushing a `v*` tag also attaches
it to a release.

## Notes outside the pack

- 26.2+ uses reverse-Z depth. Voxy 0.2.20 compiles the `voxy.json` patches itself and
  converts them for reverse-Z; it needs exactly Iris 1.11.7 (its changelog says it
  breaks with Iris 1.12+).
- Better Clouds 1.15.x ships its Voxy depth support switched off
  (`ModLoaded.VOXY = false`), so with shaders its clouds draw in front of Voxy terrain.
  That is a Better Clouds issue, not Mellow's.
