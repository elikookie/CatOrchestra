extends HSlider

func _on_value_changed(value):
	AudioServer.set_bus_volume_db(1,value)
	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
