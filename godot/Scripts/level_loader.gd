extends Object

var filename = null

#default version number for new files. Change this number if the filetype
#spec changes
var filetype_version = '0.0a'

var metadata = {}

var curves = []

var enemies = []

var obstacles = []

func _init(fn = null):
	filename = fn

#metadata loading is used to determine file layout so should not change
func load_meta():
	var is_meta = false
	var fd = File.new()
	var err = fd.open(filename,File.READ)
	while not fd.eof_reached():
		var line = fd.get_line()
		if line.begins_with('['):
			if line == '[meta]':
				is_meta = true
			else:
				is_meta = false
		if is_meta:
			line = line.split('=')
			metadata[line[0]]=line[1]
	fd.close()
	
		

func load_enemies():
	pass
	
func load_obstacles():
	var is_obs = false
	var fd = File.new()
	var err = fd.open(filename,File.READ)
	if err > 0:
		print('didnt work')
	print('opened file %s'%[filename])
	while not fd.eof_reached():
		var line = fd.get_line()
		if line.begins_with('['):
			if line.begins_with('[obstacles]'):
				is_obs = true
			else:
				is_obs = false
			continue
		if is_obs:
			line = line.split(',')
			print(line)
			var obs = [int(line[0]),float(line[1]),float(line[2]),float(line[3])]
			obstacles.append(obs)
	fd.close()

func load_from_file():
	var error = 0
	if error > 0:
		#idk what to do
		pass
	
	
func save_to_file():
	pass

