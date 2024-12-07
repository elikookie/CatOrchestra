extends HSlider

func _on_value_changed(value):
	var bus_index = 2
	var effect_index = 2
	var effect = AudioServer.get_bus_effect(bus_index, effect_index)
	if effect and effect is AudioEffectPitchShift:
		effect.set_pitch_scale(value)
	else:
		print("Effect is not a PitchShift effect or is missing.")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
