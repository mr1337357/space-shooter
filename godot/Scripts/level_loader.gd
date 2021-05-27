extends Object

var filename = null

var metadata = {}

var curves = []

var enemies = []

var obstacles = []

func _init(fn = null):
	filename = fn

func load_meta():
	var file = File.new()
	if file.open(filename) > 0:
		#handle error somehow
		pass
	var l = file.get_line()
	if l == 'test':
		pass
	
	

func load_from_file():
	pass
	
func save_to_file():
	pass

