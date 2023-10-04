shader_type canvas_item;

uniform vec4 color_signal = vec4(0.3, 0.8, 1.0, 1.0);
uniform float size : hint_range(0.0, 1.0, 0.01) = 0.5;
uniform float zoom : hint_range(0.0, 20, 1) = 8.0;
uniform float speed : hint_range(-10.0, 10.0, 1.0) = 3.0;

void fragment() {
    float d = length((UV - 0.5) * 2.0);
    float t = pow(smoothstep(1.9, 0.2, d), 0.35);

    vec4 color = vec4(color_signal.rgb, 1.0);

    d = sin(zoom * d - speed * TIME);
    d = abs(d);
    d = size / d;
    color *= d * t;

    COLOR = vec4(color);
}
