extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var path
var picked = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func open_dir(path='user://',hidden=false):
	picked = null
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

func get_picked():
	if picked != null:
		var rv = path + find_node('ItemList').get_item_text(picked)
		picked = null
		return rv
	return null

func _process(delta):
	var btn = find_node('Open_Button')
	var list = find_node('ItemList')
	if btn.is_pressed() and list.is_anything_selected():
		picked = list.get_selected_items()[0]
		return
	btn = find_node('New_Button')
	if btn.is_pressed():
		find_node('NewFileUI').visible = true
		pass #create empty file
	btn = find_node('OKButton')
	if btn.is_pressed():
		var filename = path + find_node('LineEdit').text
		print(filename)
		var file = File.new()
		var err = file.open(filename,File.WRITE)
		
		print(err)
		file.close()
		find_node('NewFileUI').visible = false
	btn = find_node('CancelButton')
	if btn.is_pressed():
		find_node('NewFileUI').visible = false
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
