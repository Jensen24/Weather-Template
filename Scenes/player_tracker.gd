extends Node3D

@export var player: Node3D

func _ready() -> void:
	player = get_tree().get_first_node_in_group("Player")

func _process(delta: float) -> void:
	if player:
		global_position = player.global_position
	if player.global_position.y > 0.9:
		global_position.y = player.global_position.y - 0.80
