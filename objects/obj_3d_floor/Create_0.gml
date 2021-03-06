/// @description Insert description here
// You can write your code in this editor
event_inherited();

var _w = sprite_get_width(spr_ground);
var _h = sprite_get_height(spr_ground);

var _uvs = sprite_get_uvs(sprite_index,0);

ground = ds_grid_create(room_width/_w, room_height/_h);
for(var _x = 0; _x+_w < room_width; _x+=_w)
{
	for(var _y = 0; _y+_h < room_height; _y+=_h)
	{
		var _buff = vertex_create_buffer();
		vertex_begin(_buff,EZ3D.vertex_format);
		
		vertex_position_3d(_buff,_x,_y,0);
		vertex_colour(_buff, c_white, 1);
		vertex_texcoord(_buff, _uvs[0], _uvs[1]);
		
		vertex_position_3d(_buff,_x+_w,_y,0);
		vertex_colour(_buff, c_white, 1);
		vertex_texcoord(_buff, _uvs[2], _uvs[1]);
		
		vertex_position_3d(_buff,_x,_y+_h,0);
		vertex_colour(_buff, c_white, 1);
		vertex_texcoord(_buff, _uvs[0], _uvs[3]);
		
		
		vertex_position_3d(_buff,_x+_w,_y+_w,0);
		vertex_colour(_buff, c_white, 1);
		vertex_texcoord(_buff, _uvs[2], _uvs[3]);
		
		vertex_position_3d(_buff,_x,_y+_h,0);
		vertex_colour(_buff, c_white, 1);
		vertex_texcoord(_buff, _uvs[0], _uvs[3]);

		vertex_position_3d(_buff,_x+_w,_y,0);
		vertex_colour(_buff, c_white, 1);
		vertex_texcoord(_buff, _uvs[2], _uvs[1]);
		
		vertex_end(_buff);
		ground[# _x/_w,_y/_w] = _buff;
	}
}
