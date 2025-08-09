extends CharacterBody2D
class_name Player

@export var SPEED = 900.0
@export var JUMP_VELOCITY = -400.0
var started=false

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


func _on_body_entered(body: Node2D) -> void:
	pass




func _process(delta: float) -> void:
	if global.eat==true:
		JUMP_VELOCITY=-700
		if has_node("sword"):
			$sword.visible = true
		
	if global2.eat_apple==true:
		SPEED=1000
		


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.


func _on_ready() -> void:
	pass
