extends CheckButton

func _toggled(toggled_on):
	var effect = AudioServer.get_bus_effect(2, 0)
	if effect and effect is AudioEffectDistortion:
		AudioServer.set_bus_effect_enabled(2, 0, toggled_on)
	else:
		print("Error: Effect is not a reverb effect or does not exist.")
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
