extends Control

onready var scoreTexto = $ScoreTexto

func cambiar_textoScore (score):
	scoreTexto.text = str(score)
