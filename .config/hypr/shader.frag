precision mediump float;
varying vec2 v_texcoord;
uniform sampler2D tex;

void main() {
    vec4 pixColor = texture2D(tex, v_texcoord);

    // this inverts the color
    // float averageColor = pixColor.r + pixColor.g + pixColor.b;
    // pixColor.rgb = vec3(1.0 - pixColor.rgb);

    // idk what the fuck this is but it gives a nice retro look
    // increase noise * x to make this more scary
    // float time = gl_FragCoord.x / 1000.0;
    // vec3 noise = vec3(fract(sin(gl_FragCoord.xyz * time)));
    // pixColor.rgb += noise * 0.1;

    float grayscale = 0.299 * pixColor.r + 0.587 * pixColor.g + 0.114 * pixColor.b;
    pixColor.rgb = vec3(grayscale);
    
    gl_FragColor = pixColor;

}
