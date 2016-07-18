
extends RigidBody2D

var xspeed = 95
var yspeed = 95

func _ready():
	set_process(true)

func _process(delta):
	if Input.is_action_pressed("ui_left"):
			set_axis_velocity(Vector2(-xspeed,0))

	if Input.is_action_pressed("ui_right"):
			set_axis_velocity(Vector2(xspeed,0))

	if Input.is_action_pressed("ui_up"):
			set_axis_velocity(Vector2(0,-yspeed))

	if Input.is_action_pressed("ui_down"):
		set_axis_velocity(Vector2(0,yspeed))