extends RigidBody2D
@export var parties:PackedScene
var buffer = 1
# Called when the node enters the scene tree for the first time.
func _ready():
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


func _on_sleeping_state_changed():
	
	queue_free()
	pass # Replace with function body.
