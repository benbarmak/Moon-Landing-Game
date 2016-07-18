extends RigidBody2D

# variables
var xspeed = 95
var yspeed = 95
var bodies = get_colliding_bodies()
#####################################

# custom functions
func checkifcrash():
	if bodies.empty():
		pass
	elif bodies[0].get_name() == "terrain1":
		set_pos(Vector2(58.639641,385.803802))

func playercontrols():
	if Input.is_action_pressed("ui_left"):
			set_axis_velocity(Vector2(-xspeed,0))

	if Input.is_action_pressed("ui_right"):
			set_axis_velocity(Vector2(xspeed,0))

	if Input.is_action_pressed("ui_up"):
			set_axis_velocity(Vector2(0,-yspeed))

	if Input.is_action_pressed("ui_down"):
		set_axis_velocity(Vector2(0,yspeed))
####################################################

func _ready():
	set_process(true)

# game loop
func _process(delta):
	bodies = get_colliding_bodies()
	playercontrols()
	checkifcrash()
