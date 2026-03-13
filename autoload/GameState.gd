extends Node

const MAPS := [
	"res://scenes/maps/Map01.tscn",
	"res://scenes/maps/Map02.tscn",
	"res://scenes/maps/Map03.tscn"
]

const WEAPONS := ["Pistol", "Shotgun", "SMG", "Rifle", "Sniper"]

var current_map_index: int = 0
var player_health: int = 100
var selected_weapon: String = WEAPONS[0]

func reset_run() -> void:
	player_health = 100
	selected_weapon = WEAPONS[0]
	current_map_index = 0

func next_map() -> String:
	current_map_index = (current_map_index + 1) % MAPS.size()
	return MAPS[current_map_index]
