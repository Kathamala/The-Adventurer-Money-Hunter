extends ColorRect

signal fade_finished

func fade_in():
	$AnimationPlayer.play("Fade_in")
	
func fade_out():
	$AnimationPlayer.play("fade_out")

func _on_AnimationPlayer_animation_finished(fade_in):
	emit_signal("fade_finished")
	