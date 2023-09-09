global.catchedBugs=ds_list_create()

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