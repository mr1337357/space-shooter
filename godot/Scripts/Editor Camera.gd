extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

var old_v = false

func _process(delta):
	if Input.is_key_pressed(KEY_V) and old_v == false:
		set_projection(get_projection()^1)
	old_v = Input.is_key_pressed(KEY_V)
	
	if
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
