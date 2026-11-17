#define max_const(x) (x > 0.0 ? x : 0.0)

// Default
#if COLOR_SCHEME == 1

const float f_LM_RED = max_const(1.0 + LM_RED);
const float f_LM_GREEN = max_const(0.75 + LM_GREEN);
const float f_LM_BLUE = max_const(0.5 + LM_BLUE);

const float f_NOON_RED = max_const(1.2 + NOON_RED);
const float f_NOON_GREEN = max_const(1.1 + NOON_GREEN);
const float f_NOON_BLUE = max_const(1.0 + NOON_BLUE);

const float f_SUNRISE_RED = max_const(0.8 + SUNRISE_RED);
const float f_SUNRISE_GREEN = max_const(0.6 + SUNRISE_GREEN);
const float f_SUNRISE_BLUE = max_const(0.4 + SUNRISE_BLUE);

const float f_SUNSET_RED = max_const(0.8 + SUNSET_RED);
const float f_SUNSET_GREEN = max_const(0.5 + SUNSET_GREEN);
const float f_SUNSET_BLUE = max_const(0.2 + SUNSET_BLUE);

const float f_MOON_RED = max_const(0.4 + MOON_RED);
const float f_MOON_GREEN = max_const(0.4 + MOON_GREEN);
const float f_MOON_BLUE = max_const(0.5 + MOON_BLUE);

const float f_NOON_SKY_T_R = max_const(0.17 + NOON_SKY_T_R);
const float f_NOON_SKY_T_G = max_const(0.35 + NOON_SKY_T_G);
const float f_NOON_SKY_T_B = max_const(0.7 + NOON_SKY_T_B);

const float f_SUNRISE_SKY_T_R = max_const(0.0 + SUNRISE_SKY_T_R);
const float f_SUNRISE_SKY_T_G = max_const(0.3 + SUNRISE_SKY_T_G);
const float f_SUNRISE_SKY_T_B = max_const(0.5 + SUNRISE_SKY_T_B);

const float f_SUNSET_SKY_T_R = max_const(0.00 + SUNSET_SKY_T_R);
const float f_SUNSET_SKY_T_G = max_const(0.15 + SUNSET_SKY_T_G);
const float f_SUNSET_SKY_T_B = max_const(0.25 + SUNSET_SKY_T_B);

const float f_NIGHT_SKY_T_R = max_const(0.0 + NIGHT_SKY_T_R);
const float f_NIGHT_SKY_T_G = max_const(0.025 + NIGHT_SKY_T_G);
const float f_NIGHT_SKY_T_B = max_const(0.075 + NIGHT_SKY_T_B);

const float f_END_SKY_T_R = max_const(0.15 + END_SKY_T_R);
const float f_END_SKY_T_G = max_const(0.1 + END_SKY_T_G);
const float f_END_SKY_T_B = max_const(0.2 + END_SKY_T_B);

const float f_NOON_SKY_G_R = max_const(0.5 + NOON_SKY_G_R);
const float f_NOON_SKY_G_G = max_const(0.55 + NOON_SKY_G_G);
const float f_NOON_SKY_G_B = max_const(0.6 + NOON_SKY_G_B);

const float f_SUNRISE_SKY_G_R = max_const(0.5 + SUNRISE_SKY_G_R);
const float f_SUNRISE_SKY_G_G = max_const(0.4 + SUNRISE_SKY_G_G);
const float f_SUNRISE_SKY_G_B = max_const(0.38 + SUNRISE_SKY_G_B);

const float f_SUNSET_SKY_G_R = max_const(0.3 + SUNSET_SKY_G_R);
const float f_SUNSET_SKY_G_G = max_const(0.25 + SUNSET_SKY_G_G);
const float f_SUNSET_SKY_G_B = max_const(0.25 + SUNSET_SKY_G_B);

const float f_NIGHT_SKY_G_R = max_const(0.15 + NIGHT_SKY_G_R);
const float f_NIGHT_SKY_G_G = max_const(0.2 + NIGHT_SKY_G_G);
const float f_NIGHT_SKY_G_B = max_const(0.25 + NIGHT_SKY_G_B);

const float f_SUN_GLARE_R = max_const(0.8 + SUN_GLARE_R);
const float f_SUN_GLARE_G = max_const(0.45 + SUN_GLARE_G);
const float f_SUN_GLARE_B = max_const(0.0 + SUN_GLARE_B);

const float f_NETHER_AMBIENT_R = max_const(0.48 + NETHER_AMBIENT_R);
const float f_NETHER_AMBIENT_G = max_const(0.24 + NETHER_AMBIENT_G);
const float f_NETHER_AMBIENT_B = max_const(0.18 + NETHER_AMBIENT_B);

const float f_END_AMBIENT_R = max_const(0.2 + END_AMBIENT_R);
const float f_END_AMBIENT_G = max_const(0.17 + END_AMBIENT_G);
const float f_END_AMBIENT_B = max_const(0.25 + END_AMBIENT_B);

const float f_END_DIRECT_R = max_const(0.3 + END_DIRECT_R);
const float f_END_DIRECT_G = max_const(0.23 + END_DIRECT_G);
const float f_END_DIRECT_B = max_const(0.45 + END_DIRECT_B);

const float f_END_AURORA1_R = max_const(0.0 + END_AURORA1_R);
const float f_END_AURORA1_G = max_const(0.45 + END_AURORA1_G);
const float f_END_AURORA1_B = max_const(0.25 + END_AURORA1_B);

const float f_END_AURORA2_R = max_const(0.45 + END_AURORA2_R);
const float f_END_AURORA2_G = max_const(0.3 + END_AURORA2_G);
const float f_END_AURORA2_B = max_const(0.1 + END_AURORA2_B);

const float f_SUNRISE_AMBIENT = max_const(0.4 + SUNRISE_AMBIENT);
const float f_NOON_AMBIENT = max_const(0.55 + NOON_AMBIENT);
const float f_SUNSET_AMBIENT = max_const(0.45 + SUNSET_AMBIENT);
const float f_NIGHT_AMBIENT = max_const(0.2 + NIGHT_AMBIENT);

const float f_WATER_RED = max_const(0.0 + WATER_RED);
const float f_WATER_GREEN = max_const(0.35 + WATER_GREEN);
const float f_WATER_BLUE = max_const(0.25 + WATER_BLUE);
const float f_WATER_ALPHA = max_const(0.4 + WATER_ALPHA);

const float f_BIOME_WATER_CONTRIBUTION = max_const(0.5 + BIOME_WATER_CONTRIBUTION);
const float f_BIOME_SKY_CONTRIBUTION = max_const(0.3 + BIOME_SKY_CONTRIBUTION);

// Vanilla Plus
#elif COLOR_SCHEME == 2

const float f_LM_RED = max_const(1.1 + LM_RED);
const float f_LM_GREEN = max_const(0.9 + LM_GREEN);
const float f_LM_BLUE = max_const(0.7 + LM_BLUE);

const float f_NOON_RED = max_const(1.05 + NOON_RED);
const float f_NOON_GREEN = max_const(1.0 + NOON_GREEN);
const float f_NOON_BLUE = max_const(1.0 + NOON_BLUE);

const float f_SUNRISE_RED = max_const(0.9 + SUNRISE_RED);
const float f_SUNRISE_GREEN = max_const(0.73 + SUNRISE_GREEN);
const float f_SUNRISE_BLUE = max_const(0.5 + SUNRISE_BLUE);

const float f_SUNSET_RED = max_const(0.9 + SUNSET_RED);
const float f_SUNSET_GREEN = max_const(0.73 + SUNSET_GREEN);
const float f_SUNSET_BLUE = max_const(0.5 + SUNSET_BLUE);

const float f_MOON_RED = max_const(0.36 + MOON_RED);
const float f_MOON_GREEN = max_const(0.36 + MOON_GREEN);
const float f_MOON_BLUE = max_const(0.45 + MOON_BLUE);

const float f_NOON_SKY_T_R = max_const(0.25 + NOON_SKY_T_R);
const float f_NOON_SKY_T_G = max_const(0.38 + NOON_SKY_T_G);
const float f_NOON_SKY_T_B = max_const(0.7 + NOON_SKY_T_B);

const float f_SUNRISE_SKY_T_R = max_const(0.22 + SUNRISE_SKY_T_R);
const float f_SUNRISE_SKY_T_G = max_const(0.37 + SUNRISE_SKY_T_G);
const float f_SUNRISE_SKY_T_B = max_const(0.67 + SUNRISE_SKY_T_B);

const float f_SUNSET_SKY_T_R = max_const(0.2 + SUNSET_SKY_T_R);
const float f_SUNSET_SKY_T_G = max_const(0.25 + SUNSET_SKY_T_G);
const float f_SUNSET_SKY_T_B = max_const(0.6 + SUNSET_SKY_T_B);

const float f_NIGHT_SKY_T_R = max_const(0.0 + NIGHT_SKY_T_R);
const float f_NIGHT_SKY_T_G = max_const(0.025 + NIGHT_SKY_T_G);
const float f_NIGHT_SKY_T_B = max_const(0.075 + NIGHT_SKY_T_B);

const float f_END_SKY_T_R = max_const(0.12 + END_SKY_T_R);
const float f_END_SKY_T_G = max_const(0.1 + END_SKY_T_G);
const float f_END_SKY_T_B = max_const(0.15 + END_SKY_T_B);

const float f_NOON_SKY_G_R = max_const(0.5 + NOON_SKY_G_R);
const float f_NOON_SKY_G_G = max_const(0.55 + NOON_SKY_G_G);
const float f_NOON_SKY_G_B = max_const(0.6 + NOON_SKY_G_B);

const float f_SUNRISE_SKY_G_R = max_const(0.5 + SUNRISE_SKY_G_R);
const float f_SUNRISE_SKY_G_G = max_const(0.52 + SUNRISE_SKY_G_G);
const float f_SUNRISE_SKY_G_B = max_const(0.57 + SUNRISE_SKY_G_B);

const float f_SUNSET_SKY_G_R = max_const(0.52 + SUNSET_SKY_G_R);
const float f_SUNSET_SKY_G_G = max_const(0.45 + SUNSET_SKY_G_G);
const float f_SUNSET_SKY_G_B = max_const(0.4 + SUNSET_SKY_G_B);

const float f_NIGHT_SKY_G_R = max_const(0.07 + NIGHT_SKY_G_R);
const float f_NIGHT_SKY_G_G = max_const(0.1 + NIGHT_SKY_G_G);
const float f_NIGHT_SKY_G_B = max_const(0.13 + NIGHT_SKY_G_B);

const float f_SUN_GLARE_R = max_const(0.75 + SUN_GLARE_R);
const float f_SUN_GLARE_G = max_const(0.5 + SUN_GLARE_G);
const float f_SUN_GLARE_B = max_const(0.0 + SUN_GLARE_B);

const float f_NETHER_AMBIENT_R = max_const(0.4 + NETHER_AMBIENT_R);
const float f_NETHER_AMBIENT_G = max_const(0.32 + NETHER_AMBIENT_G);
const float f_NETHER_AMBIENT_B = max_const(0.3 + NETHER_AMBIENT_B);

const float f_END_AMBIENT_R = max_const(0.3 + END_AMBIENT_R);
const float f_END_AMBIENT_G = max_const(0.3 + END_AMBIENT_G);
const float f_END_AMBIENT_B = max_const(0.35 + END_AMBIENT_B);

const float f_END_DIRECT_R = max_const(0.25 + END_DIRECT_R);
const float f_END_DIRECT_G = max_const(0.3 + END_DIRECT_G);
const float f_END_DIRECT_B = max_const(0.3 + END_DIRECT_B);

const float f_END_AURORA1_R = max_const(0.0 + END_AURORA1_R);
const float f_END_AURORA1_G = max_const(0.45 + END_AURORA1_G);
const float f_END_AURORA1_B = max_const(0.25 + END_AURORA1_B);

const float f_END_AURORA2_R = max_const(0.45 + END_AURORA2_R);
const float f_END_AURORA2_G = max_const(0.3 + END_AURORA2_G);
const float f_END_AURORA2_B = max_const(0.1 + END_AURORA2_B);

const float f_SUNRISE_AMBIENT = max_const(0.5 + SUNRISE_AMBIENT);
const float f_NOON_AMBIENT = max_const(0.5 + NOON_AMBIENT);
const float f_SUNSET_AMBIENT = max_const(0.5 + SUNSET_AMBIENT);
const float f_NIGHT_AMBIENT = max_const(0.3 + NIGHT_AMBIENT);

const float f_WATER_RED = max_const(0.0 + WATER_RED);
const float f_WATER_GREEN = max_const(0.35 + WATER_GREEN);
const float f_WATER_BLUE = max_const(0.25 + WATER_BLUE);
const float f_WATER_ALPHA = max_const(0.6 + WATER_ALPHA);

const float f_BIOME_WATER_CONTRIBUTION = clamp(0.7 + BIOME_WATER_CONTRIBUTION, 0, 1);
const float f_BIOME_SKY_CONTRIBUTION = max_const(0.8 + BIOME_SKY_CONTRIBUTION);

// Choc v7
#elif COLOR_SCHEME == 3

const float f_LM_RED = max_const(1.3 + LM_RED);
const float f_LM_GREEN = max_const(0.9 + LM_GREEN);
const float f_LM_BLUE = max_const(0.55 + LM_BLUE);

const float f_NOON_RED = max_const(1.2 + NOON_RED);
const float f_NOON_GREEN = max_const(1.1 + NOON_GREEN);
const float f_NOON_BLUE = max_const(0.95 + NOON_BLUE);

const float f_SUNRISE_RED = max_const(0.8 + SUNRISE_RED);
const float f_SUNRISE_GREEN = max_const(0.55 + SUNRISE_GREEN);
const float f_SUNRISE_BLUE = max_const(0.35 + SUNRISE_BLUE);

const float f_SUNSET_RED = max_const(0.8 + SUNSET_RED);
const float f_SUNSET_GREEN = max_const(0.55 + SUNSET_GREEN);
const float f_SUNSET_BLUE = max_const(0.35 + SUNSET_BLUE);

const float f_MOON_RED = max_const(0.2 + MOON_RED);
const float f_MOON_GREEN = max_const(0.25 + MOON_GREEN);
const float f_MOON_BLUE = max_const(0.35 + MOON_BLUE);

const float f_NOON_SKY_T_R = max_const(0.2 + NOON_SKY_T_R);
const float f_NOON_SKY_T_G = max_const(0.35 + NOON_SKY_T_G);
const float f_NOON_SKY_T_B = max_const(0.55 + NOON_SKY_T_B);

const float f_SUNRISE_SKY_T_R = max_const(0.1 + SUNRISE_SKY_T_R);
const float f_SUNRISE_SKY_T_G = max_const(0.25 + SUNRISE_SKY_T_G);
const float f_SUNRISE_SKY_T_B = max_const(0.4 + SUNRISE_SKY_T_B);

const float f_SUNSET_SKY_T_R = max_const(0.1 + SUNRISE_SKY_T_R);
const float f_SUNSET_SKY_T_G = max_const(0.25 + SUNRISE_SKY_T_G);
const float f_SUNSET_SKY_T_B = max_const(0.4 + SUNRISE_SKY_T_B);

const float f_NIGHT_SKY_T_R = max_const(0.0 + NIGHT_SKY_T_R);
const float f_NIGHT_SKY_T_G = max_const(0.025 + NIGHT_SKY_T_G);
const float f_NIGHT_SKY_T_B = max_const(0.075 + NIGHT_SKY_T_B);

const float f_END_SKY_T_R = max_const(0.15 + END_SKY_T_R);
const float f_END_SKY_T_G = max_const(0.12 + END_SKY_T_G);
const float f_END_SKY_T_B = max_const(0.17 + END_SKY_T_B);

const float f_NOON_SKY_G_R = max_const(0.57 + NOON_SKY_G_R);
const float f_NOON_SKY_G_G = max_const(0.6 + NOON_SKY_G_G);
const float f_NOON_SKY_G_B = max_const(0.63 + NOON_SKY_G_B);

const float f_SUNRISE_SKY_G_R = max_const(0.42 + SUNRISE_SKY_G_R);
const float f_SUNRISE_SKY_G_G = max_const(0.38 + SUNRISE_SKY_G_G);
const float f_SUNRISE_SKY_G_B = max_const(0.45 + SUNRISE_SKY_G_B);

const float f_SUNSET_SKY_G_R = max_const(0.42 + SUNSET_SKY_G_R);
const float f_SUNSET_SKY_G_G = max_const(0.38 + SUNSET_SKY_G_G);
const float f_SUNSET_SKY_G_B = max_const(0.45 + SUNSET_SKY_G_B);

const float f_NIGHT_SKY_G_R = max_const(0.17 + NIGHT_SKY_G_R);
const float f_NIGHT_SKY_G_G = max_const(0.2 + NIGHT_SKY_G_G);
const float f_NIGHT_SKY_G_B = max_const(0.25 + NIGHT_SKY_G_B);

const float f_SUN_GLARE_R = max_const(0.7 + SUN_GLARE_R);
const float f_SUN_GLARE_G = max_const(0.45 + SUN_GLARE_G);
const float f_SUN_GLARE_B = max_const(0.0 + SUN_GLARE_B);

const float f_NETHER_AMBIENT_R = max_const(0.25 + NETHER_AMBIENT_R);
const float f_NETHER_AMBIENT_G = max_const(0.2 + NETHER_AMBIENT_G);
const float f_NETHER_AMBIENT_B = max_const(0.22 + NETHER_AMBIENT_B);

const float f_END_AMBIENT_R = max_const(0.2 + END_AMBIENT_R);
const float f_END_AMBIENT_G = max_const(0.17 + END_AMBIENT_G);
const float f_END_AMBIENT_B = max_const(0.25 + END_AMBIENT_B);

const float f_END_DIRECT_R = max_const(0.12 + END_DIRECT_R);
const float f_END_DIRECT_G = max_const(0.1 + END_DIRECT_G);
const float f_END_DIRECT_B = max_const(0.2 + END_DIRECT_B);

const float f_END_AURORA1_R = max_const(0.0 + END_AURORA1_R);
const float f_END_AURORA1_G = max_const(0.45 + END_AURORA1_G);
const float f_END_AURORA1_B = max_const(0.25 + END_AURORA1_B);

const float f_END_AURORA2_R = max_const(0.45 + END_AURORA2_R);
const float f_END_AURORA2_G = max_const(0.3 + END_AURORA2_G);
const float f_END_AURORA2_B = max_const(0.1 + END_AURORA2_B);

const float f_SUNRISE_AMBIENT = max_const(0.4 + SUNRISE_AMBIENT);
const float f_NOON_AMBIENT = max_const(0.5 + NOON_AMBIENT);
const float f_SUNSET_AMBIENT = max_const(0.5 + SUNSET_AMBIENT);
const float f_NIGHT_AMBIENT = max_const(0.2 + NIGHT_AMBIENT);

const float f_WATER_RED = max_const(0.0 + WATER_RED);
const float f_WATER_GREEN = max_const(0.1 + WATER_GREEN);
const float f_WATER_BLUE = max_const(0.2 + WATER_BLUE);
const float f_WATER_ALPHA = max_const(0.6 + WATER_ALPHA);

const float f_BIOME_WATER_CONTRIBUTION = max_const(0.0 + BIOME_WATER_CONTRIBUTION);
const float f_BIOME_SKY_CONTRIBUTION = max_const(0.3 + BIOME_SKY_CONTRIBUTION);

// Visually Vibrant
#elif COLOR_SCHEME == 4

const float f_LM_RED = max_const(1.0 - 0.2 + LM_RED);
const float f_LM_GREEN = max_const(0.75 - 0.05 + LM_GREEN);
const float f_LM_BLUE = max_const(0.5 + 0.1 + LM_BLUE);

const float f_NOON_RED = max_const(1.2 - 0.23 + NOON_RED);
const float f_NOON_GREEN = max_const(1.1 - 0.28 + NOON_GREEN);
const float f_NOON_BLUE = max_const(1.0 - 0.23 + NOON_BLUE);

const float f_SUNRISE_RED = max_const(0.8 + 0.06 + SUNRISE_RED);
const float f_SUNRISE_GREEN = max_const(0.6 + 0.16 + SUNRISE_GREEN);
const float f_SUNRISE_BLUE = max_const(0.4 + 0.35 + SUNRISE_BLUE);

const float f_SUNSET_RED = max_const(0.8 + 0.14 + SUNSET_RED);
const float f_SUNSET_GREEN = max_const(0.5 + 0.32 + SUNSET_GREEN);
const float f_SUNSET_BLUE = max_const(0.2 + 0.73 + SUNSET_BLUE);

const float f_MOON_RED = max_const(0.4 - 0.22 + MOON_RED);
const float f_MOON_GREEN = max_const(0.4 - 0.22 + MOON_GREEN);
const float f_MOON_BLUE = max_const(0.5 - 0.14 + MOON_BLUE);

const float f_NOON_SKY_T_R = max_const(0.17 + 0.06 + NOON_SKY_T_R);
const float f_NOON_SKY_T_G = max_const(0.35 + 0.11 + NOON_SKY_T_G);
const float f_NOON_SKY_T_B = max_const(0.7 + 0.05 + NOON_SKY_T_B);

const float f_SUNRISE_SKY_T_R = max_const(0.0 + 0.2 + SUNRISE_SKY_T_R);
const float f_SUNRISE_SKY_T_G = max_const(0.3 + 0.09 + SUNRISE_SKY_T_G);
const float f_SUNRISE_SKY_T_B = max_const(0.5 + 0.16 + SUNRISE_SKY_T_B);

const float f_SUNSET_SKY_T_R = max_const(0.00 + 0.2 + SUNSET_SKY_T_R);
const float f_SUNSET_SKY_T_G = max_const(0.15 + 0.27 + SUNSET_SKY_T_G);
const float f_SUNSET_SKY_T_B = max_const(0.25 + 0.48 + SUNSET_SKY_T_B);

const float f_NIGHT_SKY_T_R = max_const(0.0 - 0.06 + NIGHT_SKY_T_R);
const float f_NIGHT_SKY_T_G = max_const(0.025 - 0.09 + NIGHT_SKY_T_G);
const float f_NIGHT_SKY_T_B = max_const(0.075 - 0.06 + NIGHT_SKY_T_B);

const float f_END_SKY_T_R = max_const(0.15 + 0.04 + END_SKY_T_R);
const float f_END_SKY_T_G = max_const(0.1 - 0.04 + END_SKY_T_G);
const float f_END_SKY_T_B = max_const(0.2 + 0.04 + END_SKY_T_B);

const float f_NOON_SKY_G_R = max_const(0.6 + NOON_SKY_G_R);
const float f_NOON_SKY_G_G = max_const(0.63 + NOON_SKY_G_G);
const float f_NOON_SKY_G_B = max_const(0.7 + NOON_SKY_G_B);

const float f_SUNRISE_SKY_G_R = max_const(0.5 + 0.04 + SUNRISE_SKY_G_R);
const float f_SUNRISE_SKY_G_G = max_const(0.4 + 0.2 + SUNRISE_SKY_G_G);
const float f_SUNRISE_SKY_G_B = max_const(0.38 + 0.25 + SUNRISE_SKY_G_B);

const float f_SUNSET_SKY_G_R = max_const(0.3 + 0.2 + SUNSET_SKY_G_R);
const float f_SUNSET_SKY_G_G = max_const(0.25 + 0.25 + SUNSET_SKY_G_G);
const float f_SUNSET_SKY_G_B = max_const(0.25 + 0.3 + SUNSET_SKY_G_B);

const float f_NIGHT_SKY_G_R = max_const(0.15 - 0.06 + NIGHT_SKY_G_R);
const float f_NIGHT_SKY_G_G = max_const(0.2 - 0.09 + NIGHT_SKY_G_G);
const float f_NIGHT_SKY_G_B = max_const(0.25 - 0.06 + NIGHT_SKY_G_B);

const float f_SUN_GLARE_R = max_const(0.8 + SUN_GLARE_R);
const float f_SUN_GLARE_G = max_const(0.45 + SUN_GLARE_G);
const float f_SUN_GLARE_B = max_const(0.0 + SUN_GLARE_B);

const float f_NETHER_AMBIENT_R = max_const(0.48 + 0.2 + NETHER_AMBIENT_R);
const float f_NETHER_AMBIENT_G = max_const(0.24 + 0.4 + NETHER_AMBIENT_G);
const float f_NETHER_AMBIENT_B = max_const(0.18 + 0.6 + NETHER_AMBIENT_B);

const float f_END_AMBIENT_R = max_const(0.2 + 0.32 + END_AMBIENT_R);
const float f_END_AMBIENT_G = max_const(0.17 + 0.14 + END_AMBIENT_G);
const float f_END_AMBIENT_B = max_const(0.25 + 0.45 + END_AMBIENT_B);

const float f_END_DIRECT_R = max_const(0.3 + END_DIRECT_R);
const float f_END_DIRECT_G = max_const(0.23 + END_DIRECT_G);
const float f_END_DIRECT_B = max_const(0.45 + END_DIRECT_B);

const float f_END_AURORA1_R = max_const(0.0 + 0.4 + END_AURORA1_R);
const float f_END_AURORA1_G = max_const(0.45 - 0.11 + END_AURORA1_G);
const float f_END_AURORA1_B = max_const(0.25 + 0.3 + END_AURORA1_B);

const float f_END_AURORA2_R = max_const(0.45 + 0.2 + END_AURORA2_R);
const float f_END_AURORA2_G = max_const(0.3 - 0.09 + END_AURORA2_G);
const float f_END_AURORA2_B = max_const(0.1 + 0.6 + END_AURORA2_B);

const float f_SUNRISE_AMBIENT = max_const(0.4 + 0.3 + SUNRISE_AMBIENT);
const float f_NOON_AMBIENT = max_const(0.55 + 0.2 + NOON_AMBIENT);
const float f_SUNSET_AMBIENT = max_const(0.45 + 0.3 + SUNSET_AMBIENT);
const float f_NIGHT_AMBIENT = max_const(0.2 - 0.1 + NIGHT_AMBIENT);

const float f_WATER_RED = max_const(0.0 + 0.2 + WATER_RED);
const float f_WATER_GREEN = max_const(0.35 - 0.1 + WATER_GREEN);
const float f_WATER_BLUE = max_const(0.25 - 0.15 + WATER_BLUE);
const float f_WATER_ALPHA = max_const(0.4 + 0.3 + WATER_ALPHA);

const float f_BIOME_WATER_CONTRIBUTION = max_const(0.5 + BIOME_WATER_CONTRIBUTION);
const float f_BIOME_SKY_CONTRIBUTION = max_const(0.3 + BIOME_SKY_CONTRIBUTION);

// Winter
#elif COLOR_SCHEME == 5

const float f_LM_RED = max_const(1.3 + LM_RED);
const float f_LM_GREEN = max_const(0.93 + LM_GREEN);
const float f_LM_BLUE = max_const(0.55 + LM_BLUE);

const float f_NOON_RED = max_const(1.0 + NOON_RED);
const float f_NOON_GREEN = max_const(0.95 + NOON_GREEN);
const float f_NOON_BLUE = max_const(1.0 + NOON_BLUE);

const float f_SUNRISE_RED = max_const(0.7 + SUNRISE_RED);
const float f_SUNRISE_GREEN = max_const(0.67 + SUNRISE_GREEN);
const float f_SUNRISE_BLUE = max_const(0.6 + SUNRISE_BLUE);

const float f_SUNSET_RED = max_const(0.7 + SUNSET_RED);
const float f_SUNSET_GREEN = max_const(0.67 + SUNSET_GREEN);
const float f_SUNSET_BLUE = max_const(0.6 + SUNSET_BLUE);

const float f_MOON_RED = max_const(0.4 + MOON_RED);
const float f_MOON_GREEN = max_const(0.45 + MOON_GREEN);
const float f_MOON_BLUE = max_const(0.65 + MOON_BLUE);

const float f_NOON_SKY_T_R = max_const(0.11 + NOON_SKY_T_R);
const float f_NOON_SKY_T_G = max_const(0.32 + NOON_SKY_T_G);
const float f_NOON_SKY_T_B = max_const(0.6 + NOON_SKY_T_B);

const float f_SUNRISE_SKY_T_R = max_const(0.05 + SUNRISE_SKY_T_R);
const float f_SUNRISE_SKY_T_G = max_const(0.25 + SUNRISE_SKY_T_G);
const float f_SUNRISE_SKY_T_B = max_const(0.6 + SUNRISE_SKY_T_B);

const float f_SUNSET_SKY_T_R = max_const(0.05 + SUNSET_SKY_T_R);
const float f_SUNSET_SKY_T_G = max_const(0.25 + SUNSET_SKY_T_G);
const float f_SUNSET_SKY_T_B = max_const(0.6 + SUNSET_SKY_T_B);

const float f_NIGHT_SKY_T_R = max_const(0.0 + NIGHT_SKY_T_R);
const float f_NIGHT_SKY_T_G = max_const(0.06 + NIGHT_SKY_T_G);
const float f_NIGHT_SKY_T_B = max_const(0.17 + NIGHT_SKY_T_B);

const float f_END_SKY_T_R = max_const(0.0 + END_SKY_T_R);
const float f_END_SKY_T_G = max_const(0.1 + END_SKY_T_G);
const float f_END_SKY_T_B = max_const(0.2 + END_SKY_T_B);

const float f_NOON_SKY_G_R = max_const(0.56 + NOON_SKY_G_R);
const float f_NOON_SKY_G_G = max_const(0.6 + NOON_SKY_G_G);
const float f_NOON_SKY_G_B = max_const(0.85 + NOON_SKY_G_B);

const float f_SUNRISE_SKY_G_R = max_const(0.5 + SUNRISE_SKY_G_R);
const float f_SUNRISE_SKY_G_G = max_const(0.53 + SUNRISE_SKY_G_G);
const float f_SUNRISE_SKY_G_B = max_const(0.57 + SUNRISE_SKY_G_B);

const float f_SUNSET_SKY_G_R = max_const(0.5 + SUNSET_SKY_G_R);
const float f_SUNSET_SKY_G_G = max_const(0.53 + SUNSET_SKY_G_G);
const float f_SUNSET_SKY_G_B = max_const(0.57 + SUNSET_SKY_G_B);

const float f_NIGHT_SKY_G_R = max_const(0.22 + NIGHT_SKY_G_R);
const float f_NIGHT_SKY_G_G = max_const(0.33 + NIGHT_SKY_G_G);
const float f_NIGHT_SKY_G_B = max_const(0.45 + NIGHT_SKY_G_B);

const float f_SUN_GLARE_R = max_const(0.6 + SUN_GLARE_R);
const float f_SUN_GLARE_G = max_const(0.5 + SUN_GLARE_G);
const float f_SUN_GLARE_B = max_const(0.0 + SUN_GLARE_B);

const float f_NETHER_AMBIENT_R = max_const(0.48 + NETHER_AMBIENT_R);
const float f_NETHER_AMBIENT_G = max_const(0.24 + NETHER_AMBIENT_G);
const float f_NETHER_AMBIENT_B = max_const(0.18 + NETHER_AMBIENT_B);

const float f_END_AMBIENT_R = max_const(0.17 + END_AMBIENT_R);
const float f_END_AMBIENT_G = max_const(0.2 + END_AMBIENT_G);
const float f_END_AMBIENT_B = max_const(0.23 + END_AMBIENT_B);

const float f_END_DIRECT_R = max_const(0.23 + END_DIRECT_R);
const float f_END_DIRECT_G = max_const(0.25 + END_DIRECT_G);
const float f_END_DIRECT_B = max_const(0.45 + END_DIRECT_B);

const float f_END_AURORA1_R = max_const(0.0 + END_AURORA1_R);
const float f_END_AURORA1_G = max_const(0.55 + END_AURORA1_G);
const float f_END_AURORA1_B = max_const(0.35 + END_AURORA1_B);

const float f_END_AURORA2_R = max_const(0.6 + END_AURORA2_R);
const float f_END_AURORA2_G = max_const(0.45 + END_AURORA2_G);
const float f_END_AURORA2_B = max_const(0.15 + END_AURORA2_B);

const float f_SUNRISE_AMBIENT = max_const(0.4 + SUNRISE_AMBIENT);
const float f_NOON_AMBIENT = max_const(0.4 + NOON_AMBIENT);
const float f_SUNSET_AMBIENT = max_const(0.4 + SUNSET_AMBIENT);
const float f_NIGHT_AMBIENT = max_const(0.2 + NIGHT_AMBIENT);

const float f_WATER_RED = max_const(0.0 + WATER_RED);
const float f_WATER_GREEN = max_const(0.25 + WATER_GREEN);
const float f_WATER_BLUE = max_const(0.05 + WATER_BLUE);
const float f_WATER_ALPHA = max_const(0.7 + WATER_ALPHA);

const float f_BIOME_WATER_CONTRIBUTION = max_const(0.5 + BIOME_WATER_CONTRIBUTION);
const float f_BIOME_SKY_CONTRIBUTION = max_const(0.3 + BIOME_SKY_CONTRIBUTION);

// Choc v9
#elif COLOR_SCHEME == 6

const float f_LM_RED = max_const(1.0 + 0.15 + LM_RED);
const float f_LM_GREEN = max_const(0.75 + 0.02 + LM_GREEN);
const float f_LM_BLUE = max_const(0.5 + LM_BLUE);

const float f_NOON_RED = max_const(1.2 - 0.35 + NOON_RED);
const float f_NOON_GREEN = max_const(1.1 - 0.3 + NOON_GREEN);
const float f_NOON_BLUE = max_const(1.0 - 0.27 + NOON_BLUE);

const float f_SUNRISE_RED = max_const(0.8 + 0.3 + SUNRISE_RED);
const float f_SUNRISE_GREEN = max_const(0.6 + 0.3 + SUNRISE_GREEN);
const float f_SUNRISE_BLUE = max_const(0.4 + 0.3 + SUNRISE_BLUE);

const float f_SUNSET_RED = max_const(0.8 + 0.17 + SUNSET_RED);
const float f_SUNSET_GREEN = max_const(0.5 + 0.32 + SUNSET_GREEN);
const float f_SUNSET_BLUE = max_const(0.2 + 0.45 + SUNSET_BLUE);

const float f_MOON_RED = max_const(0.4 - 0.27 + MOON_RED);
const float f_MOON_GREEN = max_const(0.4 - 0.25 + MOON_GREEN);
const float f_MOON_BLUE = max_const(0.5 - 0.32 + MOON_BLUE);

const float f_NOON_SKY_T_R = max_const(0.17 - 0.2 + NOON_SKY_T_R);
const float f_NOON_SKY_T_G = max_const(0.35 - 0.02 + NOON_SKY_T_G);
const float f_NOON_SKY_T_B = max_const(0.7 - 0.45 + NOON_SKY_T_B);

const float f_SUNRISE_SKY_T_R = max_const(0.0 + 0.16 + SUNRISE_SKY_T_R);
const float f_SUNRISE_SKY_T_G = max_const(0.3 + 0.02 + SUNRISE_SKY_T_G);
const float f_SUNRISE_SKY_T_B = max_const(0.5 - 0.45 + SUNRISE_SKY_T_B);

const float f_SUNSET_SKY_T_R = max_const(0.00 - 0.2 + SUNSET_SKY_T_R);
const float f_SUNSET_SKY_T_G = max_const(0.15 + 0.14 + SUNSET_SKY_T_G);
const float f_SUNSET_SKY_T_B = max_const(0.25 - 0.12 + SUNSET_SKY_T_B);

const float f_NIGHT_SKY_T_R = max_const(0.0 + 0.02 + NIGHT_SKY_T_R);
const float f_NIGHT_SKY_T_G = max_const(0.025 + 0.07 + NIGHT_SKY_T_G);
const float f_NIGHT_SKY_T_B = max_const(0.075 + 0.04 + NIGHT_SKY_T_B);

const float f_END_SKY_T_R = max_const(0.15 + END_SKY_T_R);
const float f_END_SKY_T_G = max_const(0.1 + END_SKY_T_G);
const float f_END_SKY_T_B = max_const(0.2 + END_SKY_T_B);

const float f_NOON_SKY_G_R = max_const(0.5 - 0.07 + NOON_SKY_G_R);
const float f_NOON_SKY_G_G = max_const(0.55 - 0.07 + NOON_SKY_G_G);
const float f_NOON_SKY_G_B = max_const(0.6 - 0.02 + NOON_SKY_G_B);

const float f_SUNRISE_SKY_G_R = max_const(0.5 - 0.02 + SUNRISE_SKY_G_R);
const float f_SUNRISE_SKY_G_G = max_const(0.4 + 0.07 + SUNRISE_SKY_G_G);
const float f_SUNRISE_SKY_G_B = max_const(0.38 + 0.04 + SUNRISE_SKY_G_B);

const float f_SUNSET_SKY_G_R = max_const(0.3 + 0.2 + SUNSET_SKY_G_R);
const float f_SUNSET_SKY_G_G = max_const(0.25 + 0.25 + SUNSET_SKY_G_G);
const float f_SUNSET_SKY_G_B = max_const(0.25 + 0.22 + SUNSET_SKY_G_B);

const float f_NIGHT_SKY_G_R = max_const(0.15 - 0.04 + NIGHT_SKY_G_R);
const float f_NIGHT_SKY_G_G = max_const(0.2 - 0.04 + NIGHT_SKY_G_G);
const float f_NIGHT_SKY_G_B = max_const(0.25 - 0.04 + NIGHT_SKY_G_B);

const float f_SUN_GLARE_R = max_const(0.8 + SUN_GLARE_R);
const float f_SUN_GLARE_G = max_const(0.45 + SUN_GLARE_G);
const float f_SUN_GLARE_B = max_const(0.0 + SUN_GLARE_B);

const float f_NETHER_AMBIENT_R = max_const(0.48 + NETHER_AMBIENT_R);
const float f_NETHER_AMBIENT_G = max_const(0.24 + NETHER_AMBIENT_G);
const float f_NETHER_AMBIENT_B = max_const(0.18 + NETHER_AMBIENT_B);

const float f_END_AMBIENT_R = max_const(0.2 + END_AMBIENT_R);
const float f_END_AMBIENT_G = max_const(0.17 + END_AMBIENT_G);
const float f_END_AMBIENT_B = max_const(0.25 + END_AMBIENT_B);

const float f_END_DIRECT_R = max_const(0.3 + END_DIRECT_R);
const float f_END_DIRECT_G = max_const(0.23 + END_DIRECT_G);
const float f_END_DIRECT_B = max_const(0.45 + END_DIRECT_B);

const float f_END_AURORA1_R = max_const(0.0 + END_AURORA1_R);
const float f_END_AURORA1_G = max_const(0.45 + END_AURORA1_G);
const float f_END_AURORA1_B = max_const(0.25 + END_AURORA1_B);

const float f_END_AURORA2_R = max_const(0.45 + END_AURORA2_R);
const float f_END_AURORA2_G = max_const(0.3 + END_AURORA2_G);
const float f_END_AURORA2_B = max_const(0.1 + END_AURORA2_B);

const float f_SUNRISE_AMBIENT = max_const(0.4 + SUNRISE_AMBIENT);
const float f_NOON_AMBIENT = max_const(0.55 + 0.1 + NOON_AMBIENT);
const float f_SUNSET_AMBIENT = max_const(0.45 + 0.1 + SUNSET_AMBIENT);
const float f_NIGHT_AMBIENT = max_const(0.2 + NIGHT_AMBIENT);

const float f_WATER_RED = max_const(0.0 - 0.3 + WATER_RED);
const float f_WATER_GREEN = max_const(0.35 - 0.03 + WATER_GREEN);
const float f_WATER_BLUE = max_const(0.25 - 0.25 + WATER_BLUE);
const float f_WATER_ALPHA = max_const(0.4 + 0.3 + WATER_ALPHA);

const float f_BIOME_WATER_CONTRIBUTION = max_const(0.5 + BIOME_WATER_CONTRIBUTION);
const float f_BIOME_SKY_CONTRIBUTION = max_const(0.3 + BIOME_SKY_CONTRIBUTION);

#endif