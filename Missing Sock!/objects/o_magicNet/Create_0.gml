x=mouse_x
y=mouse_y

image_speed=0;

magicNetRange=15;

user=o_elf

depth=user.depth-1

freezeButton=mb_left
freezeStrike=false
freezeHold=0
maxFreezeHold=10

attractButton=mb_right
attractStrike=false
attractHold=0
maxAttractHold=10

sys_freeze = part_system_create();
part_system_draw_order( sys_freeze, true);

type_freeze = part_type_create();
part_type_sprite( type_freeze, s_snowParticles, false, false, true)
part_type_size( type_freeze, 0.25, 0.5, 0, 0.05 );
part_type_scale( type_freeze, 1, 1);
part_type_speed( type_freeze, 2, 5, -0.25, 0);
part_type_direction( type_freeze, 0, 360, 0, 0);
part_type_gravity( type_freeze, 0, 270);
part_type_orientation( type_freeze, 0, 360, 0, 3, false);
part_type_colour3( type_freeze, $FFFF94, $FFFFFF, $FFFFFF );
part_type_alpha3( type_freeze, 1, 1, 0);
part_type_blend( type_freeze, false);
part_type_life( type_freeze, 10, 15);

em_freeze = part_emitter_create( sys_freeze );
part_emitter_region( sys_freeze, em_freeze, -8, 8, -8, 8, ps_shape_rectangle, ps_distr_linear );

part_system_position(sys_freeze, x,y);

sys_cool = part_system_create();
part_system_draw_order( sys_cool, true);

type_cool = part_type_create();
part_type_sprite( type_cool, s_snowParticles, false, false, true)
part_type_size( type_cool, 0.25, 0.5, 0, 0.05 );
part_type_scale( type_cool, 1, 1);
part_type_speed( type_cool, 0, 0, 0, 0.5);
part_type_direction( type_cool, 0, 360, 0, 0);
part_type_gravity( type_cool, 0, 270);
part_type_orientation( type_cool, 0, 360, 0, 3, false);
part_type_colour3( type_cool, $FFFF94, $FFFFFF, $FFFFFF );
part_type_alpha3( type_cool, 0, 1, 0);
part_type_blend( type_cool, false);
part_type_life( type_cool, 40, 70);

em_cool = part_emitter_create( sys_cool );
part_emitter_region( sys_cool, em_cool, -24, 24, -24, 24, ps_shape_rectangle, ps_distr_linear );

part_system_position(sys_cool, x,y);

sys_attract = part_system_create();
part_system_draw_order( sys_attract, true);

type_attract = part_type_create();
part_type_sprite( type_attract, s_attractParticles, false, false, true)
part_type_size( type_attract, 1, 1, -0.01, 0 );
part_type_scale( type_attract, 1, 1);
part_type_speed( type_attract, 0, 0, 0, 0);
part_type_direction( type_attract, 0, 360, 0, 0);
part_type_gravity( type_attract, 0.1, 0);
part_type_orientation( type_attract, -45, -45, 0, 5, false);
part_type_colour3( type_attract, $FFFFFF, $FFFFFF, $FFFFFF );
part_type_alpha3( type_attract, 0, 1, 0);
part_type_blend( type_attract, false);
part_type_life( type_attract, 10, 60);

em_attract = part_emitter_create( sys_attract );
part_emitter_region( sys_attract, em_attract, -8, 8, -8, 8, ps_shape_rectangle, ps_distr_linear );

part_system_position(sys_attract, x,y);


sys_catch = part_system_create();
part_system_draw_order( sys_catch, true);

type_catch = part_type_create();
part_type_sprite( type_catch, s_catchParticles, false, false, true)
part_type_size( type_catch, 0.5, 0.75, -0.01, 0.05 );
part_type_scale( type_catch, 1, 1);
part_type_speed( type_catch, 2, 3, -0.1, 0);
part_type_direction( type_catch, 0, 360, 0, 0);
part_type_gravity( type_catch, 0, 270);
part_type_orientation( type_catch, 0, 360, 0, 3, false);
part_type_colour3( type_catch, $FFCCFF, $FFFFFF, $FFFFFF );
part_type_alpha3( type_catch, 1, 1, 0);
part_type_blend( type_catch, false);
part_type_life( type_catch, 10, 25);

em_catch = part_emitter_create( sys_catch );
part_emitter_region( sys_catch, em_catch, -8, 8, -8, 8, ps_shape_rectangle, ps_distr_linear );
//part_emitter_burst(sys_catch, em_catch, type_catch, 15);

part_system_position(sys_catch, x,y);
