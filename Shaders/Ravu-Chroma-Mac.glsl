// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

//!DESC RAVU-Zoom (chroma, r3)
//!HOOK CHROMA
//!BIND HOOKED
//!BIND ravu_zoom_lut3
//!BIND LUMA
//!WIDTH LUMA.w
//!HEIGHT LUMA.h
//!OFFSET ALIGN
//!WHEN HOOKED.w LUMA.w < HOOKED.h LUMA.h < *
vec4 hook() {
vec2 pos = HOOKED_pos * HOOKED_size;
vec2 subpix = fract(pos - 0.5);
pos -= subpix;
subpix = LUT_POS(subpix, vec2(9.0));
vec2 subpix_inv = 1.0 - subpix;
subpix /= vec2(5.0, 288.0);
subpix_inv /= vec2(5.0, 288.0);
vec2 sample0 = HOOKED_tex((pos + vec2(-2.0,-2.0)) * HOOKED_pt).xy;
vec2 sample1 = HOOKED_tex((pos + vec2(-2.0,-1.0)) * HOOKED_pt).xy;
float luma1 = LUMA_tex(HOOKED_pt * (pos + vec2(-2.0,-1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample2 = HOOKED_tex((pos + vec2(-2.0,0.0)) * HOOKED_pt).xy;
float luma2 = LUMA_tex(HOOKED_pt * (pos + vec2(-2.0,0.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample3 = HOOKED_tex((pos + vec2(-2.0,1.0)) * HOOKED_pt).xy;
float luma3 = LUMA_tex(HOOKED_pt * (pos + vec2(-2.0,1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample4 = HOOKED_tex((pos + vec2(-2.0,2.0)) * HOOKED_pt).xy;
float luma4 = LUMA_tex(HOOKED_pt * (pos + vec2(-2.0,2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample5 = HOOKED_tex((pos + vec2(-2.0,3.0)) * HOOKED_pt).xy;
vec2 sample6 = HOOKED_tex((pos + vec2(-1.0,-2.0)) * HOOKED_pt).xy;
float luma6 = LUMA_tex(HOOKED_pt * (pos + vec2(-1.0,-2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample7 = HOOKED_tex((pos + vec2(-1.0,-1.0)) * HOOKED_pt).xy;
float luma7 = LUMA_tex(HOOKED_pt * (pos + vec2(-1.0,-1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample8 = HOOKED_tex((pos + vec2(-1.0,0.0)) * HOOKED_pt).xy;
float luma8 = LUMA_tex(HOOKED_pt * (pos + vec2(-1.0,0.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample9 = HOOKED_tex((pos + vec2(-1.0,1.0)) * HOOKED_pt).xy;
float luma9 = LUMA_tex(HOOKED_pt * (pos + vec2(-1.0,1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample10 = HOOKED_tex((pos + vec2(-1.0,2.0)) * HOOKED_pt).xy;
float luma10 = LUMA_tex(HOOKED_pt * (pos + vec2(-1.0,2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample11 = HOOKED_tex((pos + vec2(-1.0,3.0)) * HOOKED_pt).xy;
float luma11 = LUMA_tex(HOOKED_pt * (pos + vec2(-1.0,3.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample12 = HOOKED_tex((pos + vec2(0.0,-2.0)) * HOOKED_pt).xy;
float luma12 = LUMA_tex(HOOKED_pt * (pos + vec2(0.0,-2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample13 = HOOKED_tex((pos + vec2(0.0,-1.0)) * HOOKED_pt).xy;
float luma13 = LUMA_tex(HOOKED_pt * (pos + vec2(0.0,-1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample14 = HOOKED_tex((pos + vec2(0.0,0.0)) * HOOKED_pt).xy;
float luma14 = LUMA_tex(HOOKED_pt * (pos + vec2(0.0,0.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample15 = HOOKED_tex((pos + vec2(0.0,1.0)) * HOOKED_pt).xy;
float luma15 = LUMA_tex(HOOKED_pt * (pos + vec2(0.0,1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample16 = HOOKED_tex((pos + vec2(0.0,2.0)) * HOOKED_pt).xy;
float luma16 = LUMA_tex(HOOKED_pt * (pos + vec2(0.0,2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample17 = HOOKED_tex((pos + vec2(0.0,3.0)) * HOOKED_pt).xy;
float luma17 = LUMA_tex(HOOKED_pt * (pos + vec2(0.0,3.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample18 = HOOKED_tex((pos + vec2(1.0,-2.0)) * HOOKED_pt).xy;
float luma18 = LUMA_tex(HOOKED_pt * (pos + vec2(1.0,-2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample19 = HOOKED_tex((pos + vec2(1.0,-1.0)) * HOOKED_pt).xy;
float luma19 = LUMA_tex(HOOKED_pt * (pos + vec2(1.0,-1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample20 = HOOKED_tex((pos + vec2(1.0,0.0)) * HOOKED_pt).xy;
float luma20 = LUMA_tex(HOOKED_pt * (pos + vec2(1.0,0.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample21 = HOOKED_tex((pos + vec2(1.0,1.0)) * HOOKED_pt).xy;
float luma21 = LUMA_tex(HOOKED_pt * (pos + vec2(1.0,1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample22 = HOOKED_tex((pos + vec2(1.0,2.0)) * HOOKED_pt).xy;
float luma22 = LUMA_tex(HOOKED_pt * (pos + vec2(1.0,2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample23 = HOOKED_tex((pos + vec2(1.0,3.0)) * HOOKED_pt).xy;
float luma23 = LUMA_tex(HOOKED_pt * (pos + vec2(1.0,3.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample24 = HOOKED_tex((pos + vec2(2.0,-2.0)) * HOOKED_pt).xy;
float luma24 = LUMA_tex(HOOKED_pt * (pos + vec2(2.0,-2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample25 = HOOKED_tex((pos + vec2(2.0,-1.0)) * HOOKED_pt).xy;
float luma25 = LUMA_tex(HOOKED_pt * (pos + vec2(2.0,-1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample26 = HOOKED_tex((pos + vec2(2.0,0.0)) * HOOKED_pt).xy;
float luma26 = LUMA_tex(HOOKED_pt * (pos + vec2(2.0,0.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample27 = HOOKED_tex((pos + vec2(2.0,1.0)) * HOOKED_pt).xy;
float luma27 = LUMA_tex(HOOKED_pt * (pos + vec2(2.0,1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample28 = HOOKED_tex((pos + vec2(2.0,2.0)) * HOOKED_pt).xy;
float luma28 = LUMA_tex(HOOKED_pt * (pos + vec2(2.0,2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample29 = HOOKED_tex((pos + vec2(2.0,3.0)) * HOOKED_pt).xy;
float luma29 = LUMA_tex(HOOKED_pt * (pos + vec2(2.0,3.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample30 = HOOKED_tex((pos + vec2(3.0,-2.0)) * HOOKED_pt).xy;
vec2 sample31 = HOOKED_tex((pos + vec2(3.0,-1.0)) * HOOKED_pt).xy;
float luma31 = LUMA_tex(HOOKED_pt * (pos + vec2(3.0,-1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample32 = HOOKED_tex((pos + vec2(3.0,0.0)) * HOOKED_pt).xy;
float luma32 = LUMA_tex(HOOKED_pt * (pos + vec2(3.0,0.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample33 = HOOKED_tex((pos + vec2(3.0,1.0)) * HOOKED_pt).xy;
float luma33 = LUMA_tex(HOOKED_pt * (pos + vec2(3.0,1.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample34 = HOOKED_tex((pos + vec2(3.0,2.0)) * HOOKED_pt).xy;
float luma34 = LUMA_tex(HOOKED_pt * (pos + vec2(3.0,2.0) - HOOKED_off) + LUMA_pt * tex_offset).x;
vec2 sample35 = HOOKED_tex((pos + vec2(3.0,3.0)) * HOOKED_pt).xy;
vec3 abd = vec3(0.0);
float gx, gy;
gx = (luma13-luma1)/2.0;
gy = (luma8-luma6)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.04792235409415088;
gx = (luma14-luma2)/2.0;
gy = (-luma10+8.0*luma9-8.0*luma7+luma6)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (luma15-luma3)/2.0;
gy = (-luma11+8.0*luma10-8.0*luma8+luma7)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (luma16-luma4)/2.0;
gy = (luma11-luma9)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.04792235409415088;
gx = (-luma25+8.0*luma19-8.0*luma7+luma1)/12.0;
gy = (luma14-luma12)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (-luma26+8.0*luma20-8.0*luma8+luma2)/12.0;
gy = (-luma16+8.0*luma15-8.0*luma13+luma12)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.07901060453704994;
gx = (-luma27+8.0*luma21-8.0*luma9+luma3)/12.0;
gy = (-luma17+8.0*luma16-8.0*luma14+luma13)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.07901060453704994;
gx = (-luma28+8.0*luma22-8.0*luma10+luma4)/12.0;
gy = (luma17-luma15)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (-luma31+8.0*luma25-8.0*luma13+luma7)/12.0;
gy = (luma20-luma18)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (-luma32+8.0*luma26-8.0*luma14+luma8)/12.0;
gy = (-luma22+8.0*luma21-8.0*luma19+luma18)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.07901060453704994;
gx = (-luma33+8.0*luma27-8.0*luma15+luma9)/12.0;
gy = (-luma23+8.0*luma22-8.0*luma20+luma19)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.07901060453704994;
gx = (-luma34+8.0*luma28-8.0*luma16+luma10)/12.0;
gy = (luma23-luma21)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (luma31-luma19)/2.0;
gy = (luma26-luma24)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.04792235409415088;
gx = (luma32-luma20)/2.0;
gy = (-luma28+8.0*luma27-8.0*luma25+luma24)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (luma33-luma21)/2.0;
gy = (-luma29+8.0*luma28-8.0*luma26+luma25)/12.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.06153352068439959;
gx = (luma34-luma22)/2.0;
gy = (luma29-luma27)/2.0;
abd += vec3(gx * gx, gx * gy, gy * gy) * 0.04792235409415088;
float a = abd.x, b = abd.y, d = abd.z;
float T = a + d, D = a * d - b * b;
float delta = sqrt(max(T * T / 4.0 - D, 0.0));
float L1 = T / 2.0 + delta, L2 = T / 2.0 - delta;
float sqrtL1 = sqrt(L1), sqrtL2 = sqrt(L2);
float theta = mix(mod(atan(L1 - a, b) + 3.141592653589793, 3.141592653589793), 0.0, abs(b) < 1.192092896e-7);
float lambda = sqrtL1;
float mu = mix((sqrtL1 - sqrtL2) / (sqrtL1 + sqrtL2), 0.0, sqrtL1 + sqrtL2 < 1.192092896e-7);
float angle = floor(theta * 24.0 / 3.141592653589793);
float strength = mix(mix(0.0, 1.0, lambda >= 0.004), mix(2.0, 3.0, lambda >= 0.05), lambda >= 0.016);
float coherence = mix(mix(0.0, 1.0, mu >= 0.25), 2.0, mu >= 0.5);
float coord_y = ((angle * 4.0 + strength) * 3.0 + coherence) / 288.0;
vec2 res = vec2(0.0);
vec4 w;
w = texture(ravu_zoom_lut3, vec2(0.0, coord_y) + subpix);
res += sample0 * w[0];
res += sample1 * w[1];
res += sample2 * w[2];
res += sample3 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.2, coord_y) + subpix);
res += sample4 * w[0];
res += sample5 * w[1];
res += sample6 * w[2];
res += sample7 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.4, coord_y) + subpix);
res += sample8 * w[0];
res += sample9 * w[1];
res += sample10 * w[2];
res += sample11 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.6, coord_y) + subpix);
res += sample12 * w[0];
res += sample13 * w[1];
res += sample14 * w[2];
res += sample15 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.8, coord_y) + subpix);
res += sample16 * w[0];
res += sample17 * w[1];
w = texture(ravu_zoom_lut3, vec2(0.0, coord_y) + subpix_inv);
res += sample35 * w[0];
res += sample34 * w[1];
res += sample33 * w[2];
res += sample32 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.2, coord_y) + subpix_inv);
res += sample31 * w[0];
res += sample30 * w[1];
res += sample29 * w[2];
res += sample28 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.4, coord_y) + subpix_inv);
res += sample27 * w[0];
res += sample26 * w[1];
res += sample25 * w[2];
res += sample24 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.6, coord_y) + subpix_inv);
res += sample23 * w[0];
res += sample22 * w[1];
res += sample21 * w[2];
res += sample20 * w[3];
w = texture(ravu_zoom_lut3, vec2(0.8, coord_y) + subpix_inv);
res += sample19 * w[0];
res += sample18 * w[1];
res = clamp(res, 0.0, 1.0);
return vec4(res, 0.0, 0.0);
}
//!TEXTURE ravu_zoom_lut3
//!SIZE 45 2592
//!FORMAT rgba16f
//!FILTER LINEAR