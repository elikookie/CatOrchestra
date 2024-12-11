extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

#floortom
func _on_area_3d_body_entered(body: Node3D) -> void:
	var floortomAudioPlayer = get_node("floortom_001/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("AnimationPlayer")
	floortomAudioPlayer.play()
	animationPlayer.play("floortomHIT")

func _on_area_3d_hatFD_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/Hat_001/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("Hat001HIT")

func _on_Hat3_body_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/Hat_003/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("Hat_003HIT")

func _on_Hat2_3d_body_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/Hat_002/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("Hat002HIT")

func _on_area_hat_3d_body_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/Hat/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("HatHIT")

func _on_area_Tomtom1_3d_body_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/Tomtom1/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("Tomtom1HIT")

func _on_area_Tomtom2_3d_body_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/Tomtom2/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("Tomtom2HIT")


func _on_area_kickdrum3d_body_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/KickDrum/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("kickdrumHIT")


func _on_area_snare_3d_body_entered(body: Node3D) -> void:
	var AudioPlayer = get_node("Drums/Snare/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("Drums/AnimationPlayer")
	AudioPlayer.play()
	animationPlayer.play("SnareActionHIT")
