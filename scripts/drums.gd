extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	# Connect signals for all Area3D nodes
	for child in get_children():
		if child is Area3D:
			child.connect("area_entered", Callable(self, "_on_area_entered").bind(child))

# Called when another Area3D enters this Area3D
func _on_area_entered(other_area: Area3D, area: Area3D):
	if other_area.name == "Drumstick":  # Replace with the name or type of the drumstick's Area3D
		var part_name = area.get_parent().name  # Get the name of the parent MeshInstance3D
		var animation_name = "hit_" + part_name.lower()  # Construct animation name
		var animation_player = $AnimationPlayer
		if animation_player.has_animation(animation_name):
			animation_player.play(animation_name)
		else:
			print("No animation named %s found" % animation_name)
