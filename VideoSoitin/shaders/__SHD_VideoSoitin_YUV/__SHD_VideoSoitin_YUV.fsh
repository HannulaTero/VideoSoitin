// Modified shader from:
// https://manual.gamemaker.io/lts/en/GameMaker_Language/GML_Reference/Drawing/Videos/YUV_Videos.htm


// Coordinates.
varying vec2 vCoord;


// Uniforms.
uniform sampler2D FSH_SamplerChroma;


// Constants.
const float X = 1.164383;
const float Y = 1.138393;
const float Z = 1.138393;

const vec3 SRC_BIAS = vec3(16.0, 128.0, 128.0) / 255.0;
const mat3 SRC_XFORM = mat3(
  1.00000000 * X,  0.00000000 * Y,  1.57480000 * Z,
  1.00000000 * X, -0.18732427 * Y, -0.46812427 * Z,
  1.00000000 * X,  1.85560000 * Y,  0.00000000 * Z
);


void main()
{
  // Sample.
  float yy = texture2D(gm_BaseTexture, vCoord).r;
  vec2 cbcr = texture2D(FSH_SamplerChroma, vCoord).rg;
  
  // Get the YUV color.
  vec3 yuv = vec3(yy, cbcr);
  yuv -= SRC_BIAS;
  yuv *= SRC_XFORM;
  
  // Make final result.
  gl_FragColor = vec4(yuv, 1.0);
}