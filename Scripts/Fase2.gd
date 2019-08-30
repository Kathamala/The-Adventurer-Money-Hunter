extends Node2D

onready var score2 = get_node("/root/Global");

func _on_Moeda_coin_collected():
	score2.score += 10;
	print("Score: ", score2.score);
	pass