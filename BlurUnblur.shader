//Coded By: INinja Studio MIT Licence

shader_type canvas_item;
	
uniform vec2 Resolution;
	
	void fragment()
{
	vec2 uv = FRAGCOORD.xy / Resolution.xy;
	
	float lod = (5.0 + 5.0*sin( TIME)) + step( uv.x, 5.0 );
	
	vec3 col = texture( TEXTURE, vec2(uv.x,1.0-uv.y), lod ).xyz;
	
	COLOR = vec4( col, 1.0 );
	}