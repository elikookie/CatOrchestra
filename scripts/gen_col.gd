@tool
extends EditorScript

func _run():
	var scene_path = "res://models/drums.tscn"
	var packed_scene = load(scene_path) as PackedScene
	if not packed_scene:
		print("Failed to load scene: %s" % scene_path)
		return

	# Instantiate the scene to work with it
	var instance = packed_scene.instantiate()
	if not instance:
		print("Failed to instantiate the scene.")
		return

	# Modify the scene
	generate_collision_shapes(instance)

	# Pack the modified instance back into a PackedScene
	var new_packed_scene = PackedScene.new()
	if not new_packed_scene.pack(instance):
		print("Failed to pack the modified scene.")
		return

	# Save the modified scene back to the file
	var save_result = ResourceSaver.save(scene_path, new_packed_scene)
	if save_result == OK:
		print("Collision shapes generated and scene saved successfully.")
	else:
		print("Failed to save the scene. Error code: %d" % save_result)

func generate_collision_shapes(root):
	for child in root.get_children():
		if child is MeshInstance3D:
			create_collision_shape(child)

func create_collision_shape(mesh_instance):
	if not mesh_instance.mesh:
		print("MeshInstance3D has no mesh: %s" % mesh_instance.name)
		return

	# Create Area3D and CollisionShape3D dynamically
	var area = Area3D.new()
	mesh_instance.add_sibling(area)

	var collision_shape = CollisionShape3D.new()
	area.add_child(collision_shape)

	# Generate collision shape from the MeshInstance3D
	collision_shape.shape = mesh_instance.mesh.create_trimesh_shape()
