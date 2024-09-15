extends Node3D

@export var visitor_name = "none";
@export var is_controlable = false;
@export var act_random = false;

func _ready():
	$NameDisplay.mesh.text = visitor_name;
	
	
	
var walking_speed_per_delat = 0.05;
var looking_speed = 0.04;
var total_frame_count = 0;

var random_walking_coef = randf_range(-1,+1);
var random_moment_triggering_frames = 60;

func deg_to_rad(angel):
	return (angel * 2 * 3.14) / 360;

func _process(delta):
	total_frame_count += 1;
	if act_random == true:
		self.position.z -= walking_speed_per_delat*cos(self.rotation.y)*random_walking_coef;
		self.position.x -= walking_speed_per_delat*sin(self.rotation.y)*random_walking_coef;


		if total_frame_count % random_moment_triggering_frames == 0:
			random_walking_coef = randf_range(-0.25,+0.25);
			self.rotation.y = randf_range(0,2);
			random_moment_triggering_frames = randi_range(20,100)
	
	
	if is_controlable == true:
		$Camera.current = true;
	if is_controlable == false:
		$Camera.current = false;
		return;
		

	

		
	if Input.is_action_pressed("W"):
		self.position.z -= walking_speed_per_delat*cos(self.rotation.y);
		self.position.x -= walking_speed_per_delat*sin(self.rotation.y);


	if Input.is_action_pressed("S"):
		self.position.z += walking_speed_per_delat*cos(self.rotation.y);
		self.position.x += walking_speed_per_delat*sin(self.rotation.y);		
	
	if Input.is_action_pressed("D"):
		var new_y_roration = deg_to_rad(360)-self.rotation.y;
		self.position.x += walking_speed_per_delat*cos(new_y_roration);	
		self.position.z += walking_speed_per_delat*sin(new_y_roration);		
	
	if Input.is_action_pressed("A"):
		var new_y_roration = deg_to_rad(360)+self.rotation.y;
		self.position.x += -walking_speed_per_delat*cos(new_y_roration);	
		self.position.z += walking_speed_per_delat*sin(new_y_roration);		
	
			
	
	
	
	if Input.is_action_pressed("E"):
		self.rotation.y -= looking_speed;
		
	if Input.is_action_pressed("Q"):
		self.rotation.y += looking_speed;
		
		

		
		
