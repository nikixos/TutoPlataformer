extends Area2D

export var valor = 1

func _process(delta: float) -> void:
	rotation_degrees += 90 *delta

func _on_Moneda_body_entered(body: Node) -> void:
	if body.has_method("recolectarMonedas") and body.name == "Jugador":
		body.recolectarMonedas(valor)
		queue_free()
