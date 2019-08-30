extends Node

signal death;

func _on_Killer_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("death");