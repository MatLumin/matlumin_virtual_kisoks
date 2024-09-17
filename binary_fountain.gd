extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	for i1 in range(1):
		var drop = load("res://binary_fountain_drops.tscn").instantiate();
		self.add_child(drop);
		drop.global_position = self.global_position;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


