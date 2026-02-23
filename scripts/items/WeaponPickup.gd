extends Area3D

@export var weapon_name: String = "Pistol"

func _on_body_entered(body: Node) -> void:
	if body.has_method("switch_weapon"):
		body.switch_weapon(weapon_name)
		queue_free()
