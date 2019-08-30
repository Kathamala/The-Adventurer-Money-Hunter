extends Node2D

onready var playervars = get_node("/root/Global")

func _on_Retry_pressed():
	playervars.lives = 3;
	playervars.score = 0;
	get_tree().change_scene("res://Scenes/Fase1.tscn");


func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn");
