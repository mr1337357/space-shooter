extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	######DEBUG STUFF
	if not File.exists('user://test.lvl'):
		var fd = File.new()
		fd.open('user://test.lvl',File.WRITE)
		fd.write('[meta]\nmapname=test map\n[obstacles]\n1,5.5,5.5,-30\n1,0,0,-300\n')
		fd.close()
		fd.free()
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_buttonplay_pressed():
	get_tree().change_scene("res://Level.tscn")
	pass # Replace with function body.
