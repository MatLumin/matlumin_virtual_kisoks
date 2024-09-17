extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


var count = 0;
func _process(delta):
	count += (round(randf_range(0.0, 0.509)));
	$value.mesh.text = str(count);
