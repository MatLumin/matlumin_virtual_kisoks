extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


var views = 0;
func _process(delta):
	views += round(randf_range(0.0,0.51));
	$value.mesh.text = str(views);

