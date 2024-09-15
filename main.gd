extends Node3D


var visitor_class = load("res://visitor.tscn");
var binary_fountain_class = load("res://binary_fountain.tscn");

# Called when the node enters the scene tree for the first time.
func _ready():
	"""
	for i1 in range(100):
		var visitor = visitor_class.instantiate();
		self.add_child(visitor)
		visitor.act_random = true;
	"""
	"""
	for i0 in range(2):
		for i1 in range(100): 
			var fountain =  binary_fountain_class.instantiate();
			fountain.global_position.x += i1 ;
			self.add_child(fountain);
	"""
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
