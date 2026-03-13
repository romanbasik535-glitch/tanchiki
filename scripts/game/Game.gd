extends Node3D

@onready var map_root: Node3D = $MapRoot

func _ready() -> void:
	load_map(GameState.MAPS[GameState.current_map_index])

func load_map(path: String) -> void:
	for child in map_root.get_children():
		child.queue_free()
	var map_scene := load(path) as PackedScene
	if map_scene:
		map_root.add_child(map_scene.instantiate())

func load_next_map() -> void:
	load_map(GameState.next_map())
