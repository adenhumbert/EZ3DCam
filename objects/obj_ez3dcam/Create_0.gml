 ///  @description Properties
#region Camera and Projection
camera_mode = EZ3DCam.mode_first_person;

camera_target = vZERO;
camera_position = vZERO;
camera_direction = vZERO;
camera_direction_right = vZERO;
camera_direction_up = vZERO;

camera_up = matrix_build_translation([0,0,1]);
camera_distance = 1;

camera_angle_matrix = matrix_build_identity();
camera_angle_quat = quaternion_create();
camera_roll = 0;
camera_yaw = 0;
camera_pitch = 0;
camera_rotation_mode = EZ3DCam.rotation_local;
camera_has_moved = true;

proj_matrix = [];
view_matrix = [];

zfar = max(room_width,room_height);
fov = 45;
#endregion

//Standard vertex format.  Feel free to replace with your own if necessary
vertex_format_begin()
vertex_format_add_position_3d();
vertex_format_add_colour();
vertex_format_add_texcoord();
vertex_format = vertex_format_end();

timer=0;