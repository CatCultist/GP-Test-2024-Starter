extends RigidBody2D
@export var parties:PackedScene
@export var donut1:Sprite2D
@export var donut3:Sprite2D
@export var donut2:Sprite2D
var buffer = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	var rng = randi_range(1,3)
	var rotng = randf_range(0,360)
	rotation_degrees=rotng
	
	print("rng ",rng)
	if rng==1:
		donut1.visible=true
	elif rng==2:
		donut2.visible=true
	elif rng==3:
		donut3.visible=true
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if linear_velocity.y < 0:
		if buffer<1:
			var new_part = parties.instantiate()
			new_part.position= self.global_position
			print(self.position)
			
			get_tree().get_root().add_child(new_part) 
			print("hit")
			queue_free()
		else:
			buffer = buffer-1
	pass


func _on_body_entered(body):
	print("body")
	pass # Replace with function body.



