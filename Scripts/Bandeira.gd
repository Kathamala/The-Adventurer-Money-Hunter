extends Area2D


export(String) var nextLevel = null;
signal bandeira

func _on_Bandeira_body_entered(body):
	if body.is_in_group("Player"):
		emit_signal("bandeira");
		
func _on_Bandeira_bandeira():
	get_tree().change_scene(nextLevel);
