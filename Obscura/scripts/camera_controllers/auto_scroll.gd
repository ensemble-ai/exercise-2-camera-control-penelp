class_name AutoScroll
extends CameraControllerBase


@export var box_width:float = 10.0
@export var box_height:float = 5.0
@export var top_teft:Vector2 # github said top_teft...but i know it meant top_left
@export var bottom_right:Vector2
@export var autoscroll_speed:Vector3 = Vector3(1, 0, 1)


func _ready() -> void:
	super()
	position = target.position
	

func _process(delta: float) -> void:
	if !current:
		position = target.position
		return
	
	if draw_camera_logic:
		draw_logic()
	
	#var declarations
	top_teft.x = global_position.x - box_width/2
	bottom_right.x = box_width/2
	
	#move both the camera and the node to "scroll"
	global_position.x += autoscroll_speed.x
	target.global_position.x += autoscroll_speed.x
	
	#make the vessel stay within the box
	target.global_position.x = clamp(target.global_position.x, global_position.x- box_width, global_position.x + box_width) 
	target.global_position.z = clamp(target.global_position.z, global_position.z - box_height, global_position.z + box_height)
	
	#if the vessel gets too close to the left edge, push to right edge
	if target.global_position.x < top_teft.x and target.global_position.z == global_position.z + box_height:
		target.global_position.x += bottom_right.x
	
	super(delta)


func draw_logic() -> void:
	var mesh_instance := MeshInstance3D.new()
	var immediate_mesh := ImmediateMesh.new()
	var material := ORMMaterial3D.new()
	
	mesh_instance.mesh = immediate_mesh
	mesh_instance.cast_shadow = GeometryInstance3D.SHADOW_CASTING_SETTING_OFF
	
	var left:float = -box_width 
	var right:float = box_width 
	var top:float = -box_height
	var bottom:float = box_height 
	
	immediate_mesh.surface_begin(Mesh.PRIMITIVE_LINES, material)
	
	immediate_mesh.surface_add_vertex(Vector3(right, 0, top))
	immediate_mesh.surface_add_vertex(Vector3(right, 0, bottom))
	
	immediate_mesh.surface_add_vertex(Vector3(right, 0, bottom))
	immediate_mesh.surface_add_vertex(Vector3(left, 0, bottom))
	
	immediate_mesh.surface_add_vertex(Vector3(left, 0, bottom))
	immediate_mesh.surface_add_vertex(Vector3(left, 0, top))
	
	immediate_mesh.surface_add_vertex(Vector3(left, 0, top))
	immediate_mesh.surface_add_vertex(Vector3(right, 0, top))

	immediate_mesh.surface_end()

	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	material.albedo_color = Color.GHOST_WHITE
	
	add_child(mesh_instance)
	mesh_instance.global_transform = Transform3D.IDENTITY
	mesh_instance.global_position = Vector3(global_position.x, target.global_position.y, global_position.z)
	
	#mesh is freed after one update of _process
	await get_tree().process_frame
	mesh_instance.queue_free()
