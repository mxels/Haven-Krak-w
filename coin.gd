extends AnimatedSprite2D

@export var area_2d: Area2D
var active: bool = true

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") and active:
		Global.score += 1
		hide()
		active = false
