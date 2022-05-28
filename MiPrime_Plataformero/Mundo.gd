extends Node2D


func _on_FinNivel_body_entered(body: Node) -> void:
	if(body.name == "Jugador"):
		get_tree().change_scene("res://Mundo.tscn")
