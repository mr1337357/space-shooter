extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var c
func _init():
	c = null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _physics_process(delta):
	if c == null:
		return
	if translation.z > c.translation.z:
		translation.z = rand_range(c.translation.z-20,c.translation.z-35)
		var xpos = 0
		var ypos = 0
		#exclude playfield
		while xpos*xpos/7+ypos*ypos/3 < 1:
			xpos = rand_range(-5,5)
			ypos = rand_range(-0,15)
		translation.x = xpos
		translation.y = ypos
	pass # Replace with function body.

func set_camera(camera):
	c = camera
	translation.z = c.translation.z + 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
