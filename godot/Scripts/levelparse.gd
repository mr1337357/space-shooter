extends Object


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var filename

var file

var sections = {}

func _init(fn):
	filename = fn
	file = File.new()
	file.open(filename,file.READ)
func load_section(name):
	name = '['+name+']'
	var f = File.new()
	f.open(filename)
	while not f.eof_reached():
		var l = f.get_line()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
