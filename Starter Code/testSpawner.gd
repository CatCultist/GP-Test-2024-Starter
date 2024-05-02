extends Sprite2D

@export var boom:PackedScene
@export var slider:HSlider
@export var rotate:Node2D
@export var spawnpoint:Node2D
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_button_down():
	print("boom")
	
	for i in slider.value:
		rotate.rotation_degrees=360*(i/slider.value)
		var new_boom = boom.instantiate()
		new_boom.position= spawnpoint.global_position
		get_tree().get_root().add_child(new_boom) 
		print(i)
	pass # Replace with function body.


func _on_h_slider_value_changed(value):
	pass # Replace with function body.
