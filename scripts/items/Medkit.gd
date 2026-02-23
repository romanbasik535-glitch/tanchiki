extends Area3D

@export var heal_amount: int = 35

func _on_body_entered(body: Node) -> void:
	if body.has_method("use_medkit"):
		body.use_medkit(heal_amount)
		queue_free()
