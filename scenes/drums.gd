extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_3d_body_entered(body: Node3D) -> void:
	var floortomAudioPlayer = get_node("floortom_001/Area3D/AudioStreamPlayer3D")
	var animationPlayer = get_node("AnimationPlayer")
	floortomAudioPlayer.play()
	animationPlayer.play("floortomHIT")
