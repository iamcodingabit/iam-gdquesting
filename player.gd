extends CharacterBody2D

# to get character moving
func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 600
	move_and_slide()
	
	if velocity.length() > 0.0:
		# If python, javascript and jquery had a baby
		# this works, too btw:
		# get_node("HappyBoo").play_walk_animation()
		$HappyBoo.play_walk_animation()
	else: 
		$HappyBoo.play_idle_animation()
	
