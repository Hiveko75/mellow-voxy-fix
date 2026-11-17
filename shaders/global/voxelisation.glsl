bool is_in_voxel_range(vec3 PlayerPos) {
    return all(greaterThan(PlayerPos, vec3(0))) &&
        all(lessThan(PlayerPos, vec3(voxelDistance * 2)));
}

vec3 get_voxel_pos(vec3 PlayerPos) {
    return PlayerPos + voxelDistance + cameraPositionFract;
}

vec3 hardcoded_light_colors(float Id, vec3 FallbackColor) {
    FallbackColor = rgb_to_hsv(FallbackColor);
    vec3 Color;
    switch(uint(Id)) {
        case 10021:
            Color = vec3(0, 1, 1);
            break;
        case 10022:
            Color = vec3(0.07, 0.7, 1);
            break;
        case 10023:
            Color = vec3(0.1, 0.5, 0.8);
            break;
        case 10024:
            Color = vec3(0.2, 0.75, 0.6);
            break;
        case 10025:
            Color = vec3(0.45, 0.2, 0.8);
            break;
        case 10026:
            Color = vec3(0.55, 0.75, 1);
            break;
        case 10027:
            Color = vec3(0.75, 0.5, 1);
            break;
        default:
            Color = vec3(FallbackColor.r, min(1, FallbackColor.g + 0.3), 1);
    }

    return to_linear(hsv_to_rgb(Color));
}

vec3 filter_floodfill(sampler3D Sampler, vec3 FragPos) {
    vec3 Pos = FragPos / voxelDistance / 2; 
    vec3 C = texture_rgbm(Sampler, Pos).rgb; // Center

    return sqrt(C) * 6;
}

vec3 sample_floodfill(vec3 PlayerPos, vec3 ScreenPos, vec3 Normal, vec3 Color, float TorchPow) {
    #if (!defined DH_TERRAIN) && (!defined VOXY_TERRAIN)
        #if (COLORED_LIGHTS % 2 == 1)
            vec3 PlayerPosAbs = get_voxel_pos(PlayerPos) + view_player(Normal, false) * 0.065;

            if(is_in_voxel_range(PlayerPosAbs)) {
                vec3 VoxelData;
                if(frameCounter % 2 == 1) {
                    VoxelData = filter_floodfill(voxelImgSampler_a, PlayerPosAbs);
                } else {
                    VoxelData = filter_floodfill(voxelImgSampler_b, PlayerPosAbs);
                }


                float Fade = 1 - shadow_fade(PlayerPos, voxelDistance);
                if(TorchPow > 0.92) { // Fix emissive textures
                    Fade *= linstep(0, 0.25, get_luminance(VoxelData)); 
                }
                Color = mix(Color, VoxelData, Fade);
            }
        #endif

        #if (defined HANDHELD_LIGHTS) && COLORED_LIGHTS > 0
            #ifdef IS_IRIS
                float Dist = length(PlayerPos + relativeEyePosition);
            #else
                float Dist = length(PlayerPos);
            #endif
            if(heldBlockLightValue > 0 && (heldItemId != -1 || heldItemId2 != -1)) {
                vec3 ItemColor = hardcoded_light_colors(heldItemId, vec3(0));
                if(heldItemId2 != -1) {
                    ItemColor += hardcoded_light_colors(heldItemId2, vec3(0));
                    ItemColor /= 2;
                }
                ItemColor *= heldBlockLightValue / 15.0 * 6;

                Color = mix(Color, ItemColor, exp2(-Dist));
            }
        #endif
    #endif
    #if COLORED_LIGHTS >= 2
        #if COLORED_LIGHTS == 3
            float Fade = shadow_fade(PlayerPos, voxelDistance);
            if(Fade < 0.01) {
                return Color;
            }
        #else
            float Fade = 0.85; // TODO: Make this 1
        #endif

        vec2 SsclSamplePos = ScreenPos.xy;
        vec3 Sscl = sqrt(texture(colortex9, SsclSamplePos).rgb);
        float SsclL = length(Sscl);
        Color = mix_preserve_c1lum(Color, Sscl, pow(SsclL, 0.01) * Fade);
    #endif
    
    return Color;
}