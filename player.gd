extends Camera

# accumulators
var rot_x = 0
var rot_y = 0
var rot_z = 0

var LOOKAROUND_SPEED = 0.05
func _input(event):
    if Input.is_action_pressed("move_pitch+"):
        # modify accumulated mouse rotation
        rot_y += LOOKAROUND_SPEED
        transform.basis = Basis() # reset rotation
        rotate_object_local(Vector3(1, 0, 0), rot_y) # then rotate in X
	
    if Input.is_action_pressed("move_pitch-"):
        # modify accumulated mouse rotation
        rot_y -= LOOKAROUND_SPEED
        transform.basis = Basis() # reset rotation
        rotate_object_local(Vector3(1, 0, 0), rot_y) # then rotate in X

    if Input.is_action_pressed("move_roll-"):
        # modify accumulated mouse rotation
        rot_z += LOOKAROUND_SPEED
        transform.basis = Basis() # reset rotation
        rotate_object_local(Vector3(0, 0, 1), rot_z) # first rotate in Z
    
    if Input.is_action_pressed("move_roll+"):
        # modify accumulated mouse rotation
        rot_z -= LOOKAROUND_SPEED
        transform.basis = Basis() # reset rotation
        rotate_object_local(Vector3(0, 0, 1), rot_z) # first rotate in Z