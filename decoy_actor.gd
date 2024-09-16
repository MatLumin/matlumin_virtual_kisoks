extends Node3D

@export var title:String = "";

# Called when the node enters the scene tree for the first time.
func _ready():
	$title.mesh.text = title;


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
