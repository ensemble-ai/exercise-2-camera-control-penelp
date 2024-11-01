class_name PositionAndLerp
extends CameraControllerBase


@export var box_width:float = 5.0
@export var box_height:float = 5.0
@export var follow_speed:float = 0.5
@export var catchup_speed:float = 1.75
@export var leash_distance:float = 7.0


func _ready() -> void:
	super()
	position = target.position
	

func _process(delta: float) -> void:
	if !current:
		position = target.position
		return
	
	if draw_camera_logic:
		draw_logic()
	
	
	target.global_position.x = clamp(target.global_position.x, global_position.x- leash_distance, global_position.x + leash_distance) 
	target.global_position.z = clamp(target.global_position.z, global_position.z - leash_distance, global_position.z + leash_distance)
	
	#speed at which the camera is initially follwing 
	#left, right, up and down 
	if target.velocity.x > 0:
		global_position.x += follow_speed
	if target.velocity.x < 0:
		global_position.x += -follow_speed
	if target.velocity.z > 0:
		global_position.z += follow_speed
	if target.velocity.z < 0:
		global_position.z += -follow_speed
	
	#git intrsructins said we could use lerp explicitly
	if target.velocity.x == 0:
		global_position = lerp(global_position, target.global_position, catchup_speed * delta)

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
	
	immediate_mesh.surface_add_vertex(Vector3(left,0, 0))
	immediate_mesh.surface_add_vertex(Vector3(right, 0,0))
	
	immediate_mesh.surface_add_vertex(Vector3(0,0, bottom))
	immediate_mesh.surface_add_vertex(Vector3(0,0,top))
	
	immediate_mesh.surface_end()

	material.shading_mode = BaseMaterial3D.SHADING_MODE_UNSHADED
	material.albedo_color = Color.WEB_PURPLE
	
	add_child(mesh_instance)
	mesh_instance.global_transform = Transform3D.IDENTITY
	mesh_instance.global_position = Vector3(global_position.x, target.global_position.y, global_position.z)
	
	#mesh is freed after one update of _process
	await get_tree().process_frame
	mesh_instance.queue_free()
