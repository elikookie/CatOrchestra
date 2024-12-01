extends MeshInstance3D

@export var audio_players = []

# Update volume
func set_volume(value):
	for player in audio_players:
		AudioServer.set_bus_volume_db(player.bus_index, linear2db(value))
	
# Update pitch
func set_pitch(value, player_index):
	audio_players[player_index].pitch_scale = value

# Toggle distortion
func toggle_distortion(enabled):
	var effect = AudioServer.get_bus_effect(0, 0) # Replace with actual bus index
	effect.set_enabled(enabled)

# Play sound
func play_sound(player_index):
	audio_players[player_index].play()
	
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
