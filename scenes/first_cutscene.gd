extends Node2D
func _ready():
	$AnimationPlayer.play("fly_in")
	$mayday.play()
	$sink_rate.play()
	$beep.play()
	
func _on_animation_player_animation_finished(anim_name):
	if anim_name == "fly_in":
		$beep.stop()
		$mayday.stop()
		$sink_rate.stop()
		get_tree().change_scene_to_file("res://node_2d.tscn")
