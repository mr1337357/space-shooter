extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var path

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func open_dir(path='user://',hidden=false):
	var list = find_node('ItemList')
	self.path = path
	var dir = Directory.new()
	dir.make_dir_recursive(path)
	dir.open(self.path)
	dir.list_dir_begin()
	var file_name = dir.get_next()
	print(file_name)
	while file_name != '':
		print(file_name)
		if hidden == true or not file_name.begins_with('.'):
			list.add_item(file_name)
		file_name = dir.get_next()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
