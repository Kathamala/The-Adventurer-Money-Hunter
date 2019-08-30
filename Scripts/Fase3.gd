extends Node2D

onready var score3 = get_node("/root/Global");

func _on_Moeda_coin_collected():
	score3.score += 10;
	print("Score: ", score3.score);
	pass