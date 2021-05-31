extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rock_class
var loader
var obstacles = []
var levelpath = ''

func load_level():
	print('asdf')
	var lvl_load = load("res://scripts/level_loader.gd")
	loader = lvl_load.new(levelpath)
	loader.load_obstacles()
	for obs in loader.obstacles:
		var rock = rock_class.instance()
		rock.translation = Vector3(obs[1],obs[2],obs[3])
		obstacles.append(rock)
		add_child(rock)

	
# Called when the node enters the scene tree for the first time.
func _ready():
	rock_class = load("res://Assets/Rock.tscn")
	find_node('Hud').find_node('FileMenu').open_dir('user://levels/')
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
