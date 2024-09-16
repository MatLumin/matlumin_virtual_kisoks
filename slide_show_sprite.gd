extends Node3D



func _ready():
	pass #


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var index = 0;
var max_index = 3;

func _on_timer_timeout():
	index = index % max_index;
	var loaded = load("res://textures/slide_set_1/"+str(index)+".png");
	$slide_show_sprite.texture = loaded;
	$Timer.start();
	index += 1;
