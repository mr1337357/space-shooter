extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dusts = []
var loader 
var obstacles = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var c = self.find_node('Camera')
	
	var dust = load("res://Assets/dust.tscn")
	for i in range(30):
		var d = dust.instance()
		d.set_camera(c)
		dusts.append(d)
		add_child(d)
		
	var rock_class = load("res://Assets/Rock.tscn")
	var lvl_load = load("res://scripts/level_loader.gd")
	loader = lvl_load.new('user://test.lvl')
	loader.load_obstacles()
	for obs in loader.obstacles:
		var rock = rock_class.instance()
		rock.translation = Vector3(obs[1],obs[2],obs[3])
		obstacles.append(rock)
		add_child(rock)
		
	#add_child(dusts)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
