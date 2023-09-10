hold=noone;
holdSprite=noone;

slot=noone

bugSquizing=3;

sys_cry = part_system_create();
part_system_draw_order( sys_cry, true);

type_cry = part_type_create();
part_type_sprite( type_cry, s_cryParticles, false, false, true)
part_type_size( type_cry, 0.75, 1, -0.01, 0.05 );
part_type_scale( type_cry, 2, 2);
part_type_speed( type_cry, 1, 3, 0, 0);
part_type_direction( type_cry, 45, 50, 0, 0);
part_type_gravity( type_cry, 0.3, 270);
part_type_orientation( type_cry, 0, 45, -4, 3, false);
part_type_colour3( type_cry, $FFFFFF, $FFFFFF, $FFFFFF );
part_type_alpha3( type_cry, 1, 1, 1);
part_type_blend( type_cry, false);
part_type_life( type_cry, 15, 25);

em_cry = part_emitter_create( sys_cry );
part_emitter_region( sys_cry, em_cry, 0, 32, -8, 8, ps_shape_rectangle, ps_distr_linear );
//part_emitter_burst(sys_cry, em_cry, type_cry, 2);

part_system_position(sys_cry, x,y);
