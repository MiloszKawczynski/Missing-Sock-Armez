if instance_exists(o_hand)
{
	if o_hand.hold==noone
	{
		hoover=place_meeting(x,y,o_hand)

		image_index=hoover
	
		if mouse_check_button_pressed(mb_left) and hoover
		{
			instance_destroy(o_hand)
		
			with(o_terrariumSlot)
			{
				if !lock
				{
					if ds_list_size(contain)==2
					{
						var first=ds_list_find_value(contain,0)
						var second=ds_list_find_value(contain,1)
						
						if first!="killed" and second!="killed"
						{
					
							var relation=scr_bugToSprite(first)-scr_bugToSprite(second)
					
							if relation==-1 or relation==8
							{
								ds_list_set(contain,1,"killed")
								other.killed++
							}
			
							if relation==1 or relation==-8
							{
								ds_list_set(contain,0,"killed")
								other.killed++
							}
						}
					}
					
					for(var i=0;i<ds_list_size(contain);i++)
					{
						other.number++;
						
						other.scoore+=scr_bugToScore(ds_list_find_value(contain,i))
						
						if scr_bugTemparatureWanter(ds_list_find_value(contain,i))==isHot
						{
							other.happyScore++;
						}
						
						if scr_bugGraundedWanter(ds_list_find_value(contain,i))==isGrounded
						{
							other.happyScore++;
						}
						
						if ds_list_find_index(other.variaty,ds_list_find_value(contain,i))==-1
						{
							other.variatyScore++;
							ds_list_add(other.variaty,ds_list_find_value(contain,i))
						}
					}
				}
			}
			
			scoore+=variatyScore*10+5*happyScore
		}
	}
	else
	{
		image_index=0
	}
}
else
{
	if timer<=1
	{
		timer+=0.01;
	}
	image_index=0
}