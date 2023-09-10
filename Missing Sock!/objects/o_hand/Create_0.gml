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

sys_angry = part_system_create();
part_system_draw_order( sys_angry, true);

type_angry = part_type_create();
part_type_sprite( type_angry, s_angryParticles, false, false, true)
part_type_size( type_angry, 1, 2, -0.05, 0.25 );
part_type_scale( type_angry, 2, 2);
part_type_speed( type_angry, 0, 0, 0, 0);
part_type_direction( type_angry, 45, 50, 0, 0);
part_type_gravity( type_angry, 0, 270);
part_type_orientation( type_angry, 0, 45, 0, 6, false);
part_type_colour3( type_angry, $FFFFFF, $FFFFFF, $FFFFFF );
part_type_alpha3( type_angry, 1, 1, 1);
part_type_blend( type_angry, false);
part_type_life( type_angry, 15, 25);

em_angry = part_emitter_create( sys_angry );
part_emitter_region( sys_angry, em_angry, -8, 8, -8, 8, ps_shape_rectangle, ps_distr_linear );

part_system_position(sys_angry, x,y);

sys_happy = part_system_create();
part_system_draw_order( sys_happy, true);

type_happy = part_type_create();
part_type_sprite( type_happy, s_happyParticles, false, false, true)
part_type_size( type_happy, 1, 1, -0.01, 0.05 );
part_type_scale( type_happy, 2, 2);
part_type_speed( type_happy, 1, 3, -0.01, 0);
part_type_direction( type_happy, 45, 50, 0, 0);
part_type_gravity( type_happy, 0.1, 270);
part_type_orientation( type_happy, 10, 30, -2, 3, false);
part_type_colour3( type_happy, $FFFFFF, $FFFFFF, $FFFFFF );
part_type_alpha3( type_happy, 1, 1, 1);
part_type_blend( type_happy, false);
part_type_life( type_happy, 15, 25);

em_happy = part_emitter_create( sys_happy );
part_emitter_region( sys_happy, em_happy, -8, 8, -8, 8, ps_shape_rectangle, ps_distr_linear );

part_system_position(sys_happy, x,y);

