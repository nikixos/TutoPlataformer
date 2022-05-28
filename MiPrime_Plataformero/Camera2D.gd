extends Camera2D

onready var player = get_node("../Jugador")

func _process(delta: float) -> void:
	position.x = player.position.x
