extends StaticBody2D

@export var player : CharacterBody2D
@export var marker : Marker2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"): 
		player =  body
		player.global_position  = marker.global_position
		Global.score = 0
		for coin in get_tree().get_nodes_in_group("coin"):
			coin.active = true
			coin.show()
#reset statów 
