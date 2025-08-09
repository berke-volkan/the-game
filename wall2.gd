extends Area2D
class_name wall2


func _on_body_entered(body: Node2D) -> void:
	enemy.direction=-enemy.direction
