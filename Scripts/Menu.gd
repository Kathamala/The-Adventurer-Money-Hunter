extends Control

var ver = 1;
onready var playervar = get_node("/root/Global");

func _ready():
	$FadeIn.fade_out()
	ver = 1;
	
func _on_NewGame_pressed():
	$FadeIn.show()
	ver = 0
	$FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	if ver == 0:
		playervar.score = 0;
		playervar.lives = 3;		
		get_tree().change_scene("res://Scenes/Fase1.tscn");
	if ver == 1:
		$FadeIn.hide()
