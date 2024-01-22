precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {

    vec4 pixColor = texture2D(tex, v_texcoord);
    float color = pixColor[0] + pixColor[1] + pixColor[2];
    float monoColor = 0.299 * pixColor[0] + 0.587 * pixColor[1] + 0.114 * pixColor[2];
    // monochrome babyyy
    pixColor[0] = monoColor;
    pixColor[1] = monoColor;
    pixColor[2] = monoColor;
    gl_FragColor = pixColor;

}
