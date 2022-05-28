extends Skeleton


func _input(event: InputEvent) -> void:
	if (event.is_action_pressed("ui_down")):
		print("presionado")
		physical_bones_start_simulation()
