// [voxy-fix] Clear the main colour buffer before the sky is drawn.
// Mellow draws its sky in deferred1 on top of what the sky programs left in colortex0 (the sun and moon).
// On Minecraft 26.2 with Iris 1.11.2 and Voxy off, colortex0 still held the previous frame's picture every
// other frame, so the sky, stars, sun and moon were added twice and the sky flashed. colortex0 is already
// meant to be cleared every frame (colortex0Clear = true); this pass makes sure it is.

/* DRAWBUFFERS:0 */
layout(location = 0) out vec4 Color;

void main() {
    Color = vec4(0.0);
}
