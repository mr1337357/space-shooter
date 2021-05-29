extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ship
var velocity = Vector3(0,0,-20)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func set_ship(s):
	ship = s
	
func _process(delta):
	if translation.z < ship.translation.z - 50:
		get_parent().remove_child(self)
		ship.freebullets.append(self)
	var collision = move_and_collide(velocity*delta)
	if collision:
		get_parent().remove_child(self)
		ship.freebullets.append(self)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
