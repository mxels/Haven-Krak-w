extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		Global.win = true
		await get_tree().create_timer(3).timeout
		Global.win = false
		Global.score = 0
		get_tree().change_scene_to_file("res://main_menu.tscn")
