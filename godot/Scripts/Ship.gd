extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var velocity = Vector3(0,0,-1)
const xaccel = .7
const yaccel = .5
const decel = 1.1
# Called when the node enters the scene tree for the first time.
func _ready():
	print('ship loaded')

func _physics_process(delta):

	velocity.x /= decel
	velocity.y /= decel
	if Input.is_action_pressed("ui_right"):
		velocity.x += xaccel

	if Input.is_action_pressed('ui_left'):
		velocity.x -= xaccel

	if Input.is_action_pressed("ui_up"):
		velocity.y -= yaccel

	if Input.is_action_pressed("ui_down"):
		velocity.y += yaccel
	
	if translation.x >= 10 and velocity.x > 0:
		velocity.x = 0
	if translation.x <= -10 and velocity.x < 0:
		velocity.x = 0
		
	if translation.y >= 5 and velocity.y > 0:
		velocity.y = 0
	if translation.y <= 0 and velocity.y < 0:
		velocity.y = 0
	
	move_and_slide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
