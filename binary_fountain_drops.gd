extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	$MeshInstance3D.mesh.text = str(randi_range(0,1));


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y += randf_range(-0.01, 0.1);
	self.rotation.y += randf_range(0.1, -0.1)
	if self.position.y > 2:
		self.position.y = 0;


