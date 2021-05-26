extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dusts = []

# Called when the node enters the scene tree for the first time.
func _ready():
	var c = self.find_node('Camera')
	var dust = load("res://Assets/dust.tscn")
	for i in range(30):
		var d = dust.instance()
		d.set_camera(c)
		dusts.append(d)
		add_child(d)
	#add_child(dusts)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
