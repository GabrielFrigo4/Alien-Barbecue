//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 texture_pixel;
uniform vec3 glow_color;

void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.rgb += vec3(0.05,0.05,0.05);
	
	if(texture2D( gm_BaseTexture, v_vTexcoord ).a <= 0.0){
		const float size = 14.0;
		float dist = 0.0;
		bool found = false;
		for(float indX = -size; indX <= size; indX++){
			for(float indY = -size; indY <= size; indY++){
				float valX = v_vTexcoord.x + texture_pixel.x*indX;
				float valY = v_vTexcoord.y + texture_pixel.y*indY;
				if(texture2D(gm_BaseTexture, vec2(valX, valY)).a > 0.0){
					if(found == false){
						found = true;
						dist = sqrt(indX*indX + indY*indY);
					}
					else{
						float dist_test = sqrt(indX*indX + indY*indY);
						if(dist > dist_test){
							dist = dist_test;
						}
					}
				}
			}
		}
		if(found == true && dist <= size){
			gl_FragColor = vec4(glow_color + vec3(0.1,0.1,0.1),1.0/((dist-0.75)*(dist-0.75) + 2.25));
		}
	}
}
