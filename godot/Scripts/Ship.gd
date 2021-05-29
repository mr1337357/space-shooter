extends KinematicBody


# Declare member variables here. Examples:

#var FakeInput = load("res://Scripts/FakeInput.gd")
#onready var FakeInput = get_node("/root/FakeInput")

var velocity = Vector3(0,0,-3)
const xaccel = .7
const yaccel = .5
const decel = 1.1

var oldspace = false
# Called when the node enters the scene tree for the first time.
var bullets = []
var freebullets = []


func _ready():
	print('ship loaded')
	var bullet_class = load('res://Assets/bullet.tscn')
	for x in range(10):
		var bullet = bullet_class.instance()
		bullets.append(bullet)
		freebullets.append(bullet)
	
func _physics_process(delta):

	velocity.x /= decel
	velocity.y /= decel
	if FakeInput.is_action_pressed("ui_right"):
		velocity.x += xaccel

	if FakeInput.is_action_pressed('ui_left'):
		velocity.x -= xaccel

	if FakeInput.is_action_pressed("ui_up"):
		velocity.y -= yaccel

	if FakeInput.is_action_pressed("ui_down"):
		velocity.y += yaccel
	
	if translation.x >= 10 and velocity.x > 0:
		velocity.x = 0
	if translation.x <= -10 and velocity.x < 0:
		velocity.x = 0
		
	if translation.y >= 10 and velocity.y > 0:
		velocity.y = 0
	if translation.y <= 0 and velocity.y < 0:
		velocity.y = 0
		
	rotation.y = -velocity.x/20
	rotation.x = velocity.y/20
	if 	FakeInput.is_key_pressed(KEY_SPACE) and not oldspace:
		var bullet = freebullets.pop_front()
		if bullet != null:
			var loc = translation
			loc.z-=3
			bullet.translation = loc
			bullet.set_ship(self)
			get_parent().add_child(bullet)
	oldspace = FakeInput.is_key_pressed(KEY_SPACE)
	move_and_slide(velocity)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
