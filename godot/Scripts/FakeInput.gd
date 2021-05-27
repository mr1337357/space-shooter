extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# allows lazy people to read FakeInput instead of Input to remap controls

# Called when the node enters the scene tree for the first time.
var keymap = {}

func is_key_pressed(sc):
	if sc in keymap:
		sc = keymap[sc]
	return Input.is_key_pressed(sc)
	
func is_action_pressed(action):
	return Input.is_action_pressed(action)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
