extends KinematicBody2D

var VectorMov = Vector2.ZERO
var gravedad : int = 4000
var fuerzaSalto : float = -1200

var score = 0

var VelocidadMovimiento : int = 200
onready var spriteJugador = $Sprite 

onready var ui = get_node("/root/Mundo/CanvasLayer/UI")

func _ready():
	pass

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	
	var input_X = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	VectorMov.x = input_X*VelocidadMovimiento
	
	VectorMov.y += gravedad * delta

	if Input.is_action_pressed("ui_accept") and is_on_floor():
		VectorMov.y = fuerzaSalto
	
	if VectorMov.x < 0:
		spriteJugador.flip_h = true
	if VectorMov.x > 0:
		spriteJugador.flip_h = false
	
	VectorMov = move_and_slide(VectorMov, Vector2.UP)
	
	pass

func morirse():
	get_tree().reload_current_scene()

func recolectarMonedas(value):
	score+=value
	$MonedaSonido.play()
	ui.cambiar_textoScore(score)
