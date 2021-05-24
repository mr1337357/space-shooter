extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ship

# Called when the node enters the scene tree for the first time.
func _ready():
	print(get_parent().get_children())
	ship = get_parent().find_node('Ship')
	#pass # Replace with function body.

func _physics_process(delta):
	#translation.z -= 3 * delta
	translation.z = ship.translation.z + 10
	rotation.x = ship.translation.y / 40
	rotation.y = -ship.translation.x / 40

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
