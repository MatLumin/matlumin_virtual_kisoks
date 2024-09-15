extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
var total_investment = 9_523_000;

func _process(delta):
	total_investment += randi_range(1,10);
	$investment_counter.mesh.text =  str(total_investment)
