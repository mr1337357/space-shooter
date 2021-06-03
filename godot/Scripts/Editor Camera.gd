extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var frozen = false

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

var old_v = false

func _process(delta):
	if frozen == true:
		return
	var movement = Vector3(0,0,0)
	if FakeInput.is_key_pressed(KEY_V) and old_v == false:
		set_projection(get_projection()^1)
	old_v = FakeInput.is_key_pressed(KEY_V)
	
	if FakeInput.is_key_pressed(KEY_W):
		movement.z = -.01
	if FakeInput.is_key_pressed(KEY_S):
		movement.z = .01
	if FakeInput.is_key_pressed(KEY_A):
		movement.x = -.01
	if FakeInput.is_key_pressed(KEY_D):
		movement.x = .01
	if FakeInput.is_key_pressed(KEY_Q):
		movement.y = .01
	if FakeInput.is_key_pressed(KEY_E):
		movement.y = -.01
	translation += movement / delta
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
