extends Camera
# accumulators
#var rot_x = 0
#var rot_y = 0
#var rot_z = 0    
var LOOKAROUND_SPEED = 0.05



func _process(delta):
	if Input.is_key_pressed(KEY_W):	
		rotate_object_local(Vector3(1,0,0),deg2rad(2.5))
		print(rotation)
	if Input.is_key_pressed(KEY_S):
		rotate_object_local(Vector3(1,0,0),deg2rad(-2.5))
		print(rotation)
	if Input.is_key_pressed(KEY_Q):		
		rotate_object_local(Vector3(0,1,0),deg2rad(2.5))
		print(rotation)
	if Input.is_key_pressed(KEY_E):
		rotate_object_local(Vector3(0,1,0),deg2rad(-2.5))
		print(rotation)
	if Input.is_key_pressed(KEY_D):		
		rotate_object_local(Vector3(0,0,1),deg2rad(2.5))
		print(rotation)
	if Input.is_key_pressed(KEY_A):
		rotate_object_local(Vector3(0,0,1),deg2rad(-2.5))
		print(rotation)
	if Input.is_key_pressed(KEY_SHIFT):
		translate_object_local(Vector3(0,0,-0.5))
		print(rotation)
	if Input.is_key_pressed(KEY_CONTROL):
		translate_object_local(Vector3(0,0,0.5))
		print(Position3D)





#func _process(delta):
#
#    var rot_x = 0
#    var rot_y = 0
#    var rot_z = 0   
#
#    if Input.is_action_pressed("move_pitch+"):
#        rot_x += LOOKAROUND_SPEED
#
#    if Input.is_action_pressed("move_pitch-"):
#        rot_x -= LOOKAROUND_SPEED
#
#    if Input.is_action_pressed("move_roll-"):
#        rot_z += LOOKAROUND_SPEED
#
#    if Input.is_action_pressed("move_roll+"):
#        rot_z -= LOOKAROUND_SPEED
#
#    if Input.is_action_pressed("move_yaw-"):
#        rot_y += LOOKAROUND_SPEED
#
#    if Input.is_action_pressed("move_yaw+"):
#        rot_y -= LOOKAROUND_SPEED
#    rotate(Vector3(rot_x,rot_y,rot_z), 1)
	
	
	
	
	
	
	#transform.basis = Basis()
    #Pitch
#    rotate_object_local(Vector3(1,0,0),rot_x)
#
#    #Roll
#    rotate_object_local(Vector3(0,0,1),rot_z)
#
#    #Yaw
#    rotate_object_local(Vector3(0,1,0),rot_y)
#    orthonormalize ()
#    rotate_x(rot_x)
#    rotate_y(rot_y)
#    rotate_z(rot_z)

#func _input(event):
#    if Input.is_action_pressed("move_pitch+"):
#        # modify accumulated mouse rotation
#        rot_y += LOOKAROUND_SPEED
#        transform.basis = Basis() # reset rotation
#        rotate_object_local(Vector3(1, 0, 0), rot_y) # then rotate in X
#
#    if Input.is_action_pressed("move_pitch-"):
#        # modify accumulated mouse rotation
#        rot_y -= LOOKAROUND_SPEED
#        transform.basis = Basis() # reset rotation
#        rotate_object_local(Vector3(1, 0, 0), rot_y) # then rotate in X
#
#    if Input.is_action_pressed("move_roll-"):
#        # modify accumulated mouse rotation
#        rot_z += LOOKAROUND_SPEED
#        transform.basis = Basis() # reset rotation
#        rotate_object_local(Vector3(0, 0, 1), rot_z) # first rotate in Z
#
#    if Input.is_action_pressed("move_roll+"):
#        # modify accumulated mouse rotation
#        rot_z -= LOOKAROUND_SPEED
#        transform.basis = Basis() # reset rotation
#        rotate_object_local(Vector3(0, 0, 1), rot_z) # first rotate in Z