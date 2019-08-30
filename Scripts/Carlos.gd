extends KinematicBody2D;

const UP = Vector2(0, -1);
var move = Vector2();
var speed = 15000;
export var jumpForce = -12000;
export var gravity = 500;
export var maxJumps = 2;
var actJumps = 0;
export var lives = 3;
onready var playervars = get_node("/root/Global");

#Mover
func _process(delta):
	OS.set_low_processor_usage_mode(true);
	if is_on_floor():
		actJumps = 0;	
	if Input.is_action_pressed("ui_right"):	
		if not Input.is_action_pressed("ui_up") && is_on_floor():
			$"CarlosAnimado".animation = "Walk";		
		$"CarlosAnimado".flip_h = false;		
		move.x = speed * delta;		
	elif Input.is_action_pressed("ui_left"):
		if not Input.is_action_pressed("ui_up") && is_on_floor():		
			$"CarlosAnimado".animation = "Walk";		
		$"CarlosAnimado".flip_h = true;		
		move.x = -speed * delta;
	else:
		if not Input.is_action_pressed("ui_up"):
			$"CarlosAnimado".animation = "Idle";			
		move.x = 0;
	if Input.is_action_just_pressed("ui_up"):		
		if actJumps < maxJumps:
			$"CarlosAnimado".animation = "Jump";			
			move.y = jumpForce * delta;
			actJumps += 1;
			print(actJumps, " Jumps");
	if not is_on_floor():
			move.y += gravity * delta;
			if not Input.is_action_pressed("ui_up") && not is_on_floor() && not Input.is_action_pressed("ui_right") && not Input.is_action_pressed("ui_left"):
	
				$"CarlosAnimado".animation = "Fall";	
	move_and_slide(move, UP);
	
func _on_Death_body_entered(body):
	playervars.lives -= 1;
	if playervars.lives == 0:
		get_tree().change_scene("res://Scenes/GameOverScreen.tscn")
	else:
		position.x = 30;
		position.y = 140;
	print("Lives: ", playervars.lives);
	
	
		

