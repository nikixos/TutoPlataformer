extends Area2D

export var velocidad : int = 100
export var distanciaMov : int = 100

onready var inicioX : float = position.x
onready var objetivoX : float = position.x + distanciaMov

"""
asdlsdf
asfsdfsdfsdfsdsdfsadfsdf
"""

func _physics_process(delta: float) -> void:
	position.x = move_toward(position.x, objetivoX, velocidad*delta)
	#asdfsafdasfsdfdsds
	
	if position.x == objetivoX:
		if objetivoX == inicioX:
			objetivoX = position.x + distanciaMov
		else:
			objetivoX = inicioX

func move_to(posAhora, hacia, cuanto):
	var nuevo = posAhora
	if nuevo < hacia:
		nuevo += cuanto
		if nuevo > hacia:
			nuevo = hacia
	else:
		nuevo -= cuanto
		if nuevo < hacia:
			nuevo = hacia
	return nuevo


func _on_Enemigo_body_entered(body: Node) -> void:
	if body.has_method("morirse") and body.name == "Jugador":
		body.morirse()
	pass # Replace with function body.
