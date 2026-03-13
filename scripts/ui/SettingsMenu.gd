extends Control

func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main/Main.tscn")

func _on_quality_item_selected(index: int) -> void:
	match index:
		0:
			ProjectSettings.set_setting("rendering/anti_aliasing/quality/msaa_3d", 0)
		1:
			ProjectSettings.set_setting("rendering/anti_aliasing/quality/msaa_3d", 1)
		2:
			ProjectSettings.set_setting("rendering/anti_aliasing/quality/msaa_3d", 2)
