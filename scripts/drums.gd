extends Node3D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	#Disks on drum loop for floating
#	#TODO need to figure out how to play the floating animations at the same time
	$AnimationPlayer.play("floatt")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
