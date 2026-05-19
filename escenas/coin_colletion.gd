extends Area3D
@export var speed: = 0.01
signal coinCollected 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate_y(speed)


func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		print("Colision")
	if body is Player:
		print("colision por clase")
		
	print("colision con layer")
	
	emit_signal("coinCollected")
	queue_free()
