# Mellow v3.5 Fix — Voxy patch for Mellow 3.5 (MC 26.2 / 26.3)

Personal, unofficial patch on top of the Mellow v3.5 Modrinth release. Original
license files are kept unchanged. Not affiliated with or endorsed by TheCMK —
please don't publish this under the Mellow name.

Target: Voxy 0.2.20-beta + Iris 1.11.7 (26.3). Untested in-game.

## Changes

1. `shaders/program/voxy_water.glsl` — `dhDepthTex0` now maps to
   `vxDepthTexOpaque` instead of `vxDepthTexTrans`. The translucent patch
   (screen-space shadows / `get_depth`) was sampling the depth texture that
   Voxy has bound as the depth attachment of that same pass — a GPU feedback
   loop with undefined results.
2. `shaders/program/voxy_water.glsl` — inside the Voxy pass, `depthtex1` is
   redirected to `depthtex0` and `USE_LQ_DEPTH` (gaux2) is disabled. Voxy draws
   at the end of Sodium's cutout pass, before Iris copies `depthtex1` and
   before `deferred` writes gaux2, so both held last frame's data.
3. `shaders/program/deferred1.fsh` — the LOD-translucent overlay test
   `depthtex1 >= 1` is relaxed to `>= 0.99999`, so the reverse-Z far plane
   (inverted to 1 - 0 by Iris) still counts as sky if it doesn't land on
   exactly 1.0.

4. `shaders/program/voxy.json`, `voxy_terrain.glsl`, `voxy_water.glsl` —
   `colortex8` (Mellow maps it to `minecraft:textures/environment/clouds.png`)
   is no longer bound for Voxy. Iris loads that texture lazily, so Voxy's bind
   uploaded it inside Sodium's open terrain render pass, which 26.3 forbids:
   `IllegalStateException: Close the existing render pass before performing
   additional commands`. Side effect: with Cloud Style = Blocky, clouds are
   not drawn in LOD reflections/fog.

5. `shaders/program/voxy_water.glsl` — upstream bug: with Water Texture
   Mode 2 the Voxy translucent shader used an undefined `TweakedLM` and failed
   to compile (`error C1503: undefined variable "TweakedLM"`), so Voxy fell back
   to its unshaded pipeline. Now matches `gbuffers_water`: plain water colour,
   lit once by `tweak_lightmap`.

6. `voxy_terrain.glsl`, `voxy_water.glsl` — `dCoordx`/`dCoordy` were global
   initializers taking `dFdx(texcoord)` before Voxy sets `texcoord`, which made
   NVIDIA print `"texcoord" might be used before being initialized` (Voxy posts
   compiler output to chat). They are now zero gradients: Voxy exits helper
   invocations before the patch runs, so derivatives there aren't valid anyway.

Search for `[voxy-fix]` to find every change.
