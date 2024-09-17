extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

var speed = randf_range(0.02,0.09);
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y += speed;
	if self.position.y > 2:
		self.position.y = 0;


