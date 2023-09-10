randomize()

global.catchedBugs=ds_list_create()
ds_list_add(global.catchedBugs,"lotek","lotek","planta","skakacz")

acceleration=1;
deceleration=1;
maximumSpeed=10;

gravitation=0.4
floatSpeed=2;
jumpSpeed=12
maxJumps=1;
jumps=maxJumps;

rightKey=ord("D")
leftKey=ord("A")
jumpKey=vk_space;

instance_create_depth(x,y,depth,o_magicNet)

//sys_float = part_system_create();
//part_system_draw_order( sys_float, true);

type_float = part_type_create();
part_type_sprite( type_float, s_floatParticles, false, false, true)
part_type_size( type_float, 0.5, 0.75, 0, 0.05 );
part_type_scale( type_float, 1, 1);
part_type_speed( type_float, 0, 0, 0, 0);
part_type_direction( type_float, 0, 360, 0, 0);
part_type_gravity( type_float, 0.001, 270);
part_type_orientation( type_float, 0, 360, 1, 1, false);
part_type_colour3( type_float, $FFFF94, $FFFFFF, $FFFFFF );
part_type_alpha3( type_float, 1, 1, 0);
part_type_blend( type_float, false);
part_type_life( type_float, 60, 140);

//em_float= part_emitter_create( sys_float );
//part_emitter_region( sys_float, em_float, -8, 8, -4.5, 4.5, ps_shape_rectangle, ps_distr_linear );
//part_emitter_burst(sys_float, pemit1, type_float, 35);

//part_system_position(sys_float, room_width/2, room_height/2);


type_floatBurst = part_type_create();
part_type_sprite( type_floatBurst, s_floatParticles, false, false, true)
part_type_size( type_floatBurst, 0.5, 0.75, 0, 0.05 );
part_type_scale( type_floatBurst, 1, 1);
part_type_speed( type_floatBurst, 1, 3, -0.25, 0);
part_type_direction( type_floatBurst, 20, 160, 0, 0);
part_type_gravity( type_floatBurst, 0, 270);
part_type_orientation( type_floatBurst, 0, 360, 0, 3, false);
part_type_colour3( type_floatBurst, $FFFF94, $FFFFFF, $FFFFFF );
part_type_alpha3( type_floatBurst, 1, 1, 0);
part_type_blend( type_floatBurst, false);
part_type_life( type_floatBurst, 10, 15);
