extends Control

func _on_start_pressed() -> void:
	GameState.reset_run()
	get_tree().change_scene_to_file("res://scenes/game/Game.tscn")

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/ui/SettingsMenu.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()
