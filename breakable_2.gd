extends Area2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var showınteraction=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if showınteraction && Input.is_action_just_pressed("interact"):
		queue_free()


func _on_body_entered(body):
	if body is Player:showınteraction=true
func _on_body_exited(body):
	if body is Player:showınteraction=false
