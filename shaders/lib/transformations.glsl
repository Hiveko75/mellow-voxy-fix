// Projection matrix-vector multiplication.
// The following three functions are licensed under the MIT license
// Copyright (c) 2025-2026 Luracasmus
vec4 proj_mmul(mat4 proj_mat, vec3 view) {
	return vec4(
		vec2(proj_mat[0].x, proj_mat[1].y) * view.xy,
		fma(proj_mat[2].z, view.z, proj_mat[3].z),
		proj_mat[2].w * view.z
	);
}

vec4 proj_inv_mmul(mat4 inv_proj_mat, vec3 ndc) {
	return vec4(
		vec2(inv_proj_mat[0].x, inv_proj_mat[1].y) * ndc.xy,
		inv_proj_mat[3].z,
		fma(inv_proj_mat[2].w, ndc.z, inv_proj_mat[3].w)
	);
}

vec3 rot_trans_mmul(mat4 rot_trans_mat, vec3 vec) {
	return mat3(rot_trans_mat) * vec + rot_trans_mat[3].xyz;
}

vec3 project_and_divide(mat4 Projection_mat, vec3 x) {
    vec4 HomogeneousPos = proj_mmul(Projection_mat, x);
    return HomogeneousPos.xyz / HomogeneousPos.w;
}

vec3 screen_view(vec3 x, bool IsDH) {
    x = x * 2 - 1;

    mat4 ProjMat = IsDH ? dhProjectionInverse : gbufferProjectionInverse;
    vec4 r = proj_inv_mmul(ProjMat, x);
    return r.xyz / r.w;
}

vec3 view_player(vec3 x, bool IsDH) {
    #ifdef VOXY
        mat4 Mat = IsDH ? vxModelViewInv : gbufferModelViewInverse;
    #else
        mat4 Mat = gbufferModelViewInverse;
    #endif
    return mat3(Mat) * x;
}

vec3 player_view(vec3 x, bool IsDH) {
    #ifdef VOXY
        mat4 Mat = IsDH ? vxModelView : gbufferModelView;
    #else
        mat4 Mat = gbufferModelView;
    #endif
    return mat3(Mat) * x;
}

vec3 view_screen(vec3 x, bool IsDH) {
    mat4 ProjMat = IsDH ? dhProjection : gbufferProjection;
    vec4 r = proj_mmul(ProjMat, x);
    x = r.xyz / r.w;
    x = x * 0.5 + 0.5;
    return x;
}

vec3 player_shadow(vec3 PlayerPos) {
    vec3 ShadowViewPos = rot_trans_mmul(shadowModelView, PlayerPos + gbufferModelViewInverse[3].xyz);
    vec3 ShadowPos = proj_mmul(shadowProjection, ShadowViewPos).xyz; //convert to shadow ndc space
    return ShadowPos;
}


#define to_linear(sRGB) ( sRGB * (sRGB * (sRGB * 0.305306011 + 0.682171111) + 0.012522878) )


// https://graphicrants.blogspot.com/2009/04/rgbm-color-encoding.html
vec4 RGBMEncode( vec3 color ) {
    vec4 rgbm;
    color = color;
    color = sqrt(color);
    color *= 1.0 / 6.0;
    rgbm.a = clamp( max( max( color.r, color.g ), max( color.b, 1e-6 ) ), 0, 1 );
    rgbm.a = ceil( rgbm.a * 255.0 ) / 255.0;
    rgbm.rgb = color / rgbm.a;
    return rgbm;
}

vec3 RGBMDecode( vec4 rgbm ) {
    vec3 x = 6.0 * rgbm.rgb * rgbm.a;
    return x*x;
}

vec3 texture_rgbm(sampler3D sampler, vec3 texcoord) {
    return RGBMDecode(texture(sampler, texcoord));
}

// In shaderlabs discord: https://discord.com/channels/237199950235041794/525510804494221312/955506913834070016
vec2 toPrevScreenPos(vec2 currScreenPos, float depth, bool isDH) {
    mat4 ProjInv = isDH ? dhProjectionInverse : gbufferProjectionInverse;
    #ifdef VOXY
        mat4 ModelViewInv = isDH ? vxModelViewInv : gbufferModelViewInverse;
        mat4 PrevModelView = isDH ? vxModelViewPrev : gbufferPreviousModelView;
    #else
        mat4 ModelViewInv = gbufferModelViewInverse;
        mat4 PrevModelView = gbufferPreviousModelView;
    #endif
    mat4 PrevProj = isDH ? dhPreviousProjection : gbufferPreviousProjection;
    vec3 currViewPos = vec3(vec2(ProjInv[0].x, ProjInv[1].y) * (currScreenPos.xy * 2.0 - 1.0) + ProjInv[3].xy, ProjInv[3].z);
    currViewPos /= (ProjInv[2].w * (depth * 2.0 - 1.0) + ProjInv[3].w);
    vec3 currFeetPlayerPos = mat3(ModelViewInv) * currViewPos + ModelViewInv[3].xyz;

    vec3 prevFeetPlayerPos = depth > 0.56 ? currFeetPlayerPos + cameraPosition - previousCameraPosition : currFeetPlayerPos;
    vec3 prevViewPos = mat3(PrevModelView) * prevFeetPlayerPos + PrevModelView[3].xyz;
    vec2 finalPos = vec2(PrevProj[0].x, PrevProj[1].y) * prevViewPos.xy + PrevProj[3].xy;
    return (finalPos / -prevViewPos.z) * 0.5 + 0.5;
}