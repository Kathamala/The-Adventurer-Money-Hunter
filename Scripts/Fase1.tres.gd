extends Node2D

onready var score1 = get_node("/root/Global");

func _on_Moeda_coin_collected():
	score1.score += 10;
	print("Score: ", score1.score);
	pass
