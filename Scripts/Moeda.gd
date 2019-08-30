extends Node

signal coin_collected;

func _on_Moeda_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("coin_collected");
		queue_free();