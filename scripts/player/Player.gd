extends CharacterBody3D

@export var move_speed: float = 6.0
@export var look_sensitivity: float = 0.2

var health: int = 100
var weapons := {
	"Pistol": {"damage": 20, "ammo": 12},
	"Shotgun": {"damage": 60, "ammo": 8},
	"SMG": {"damage": 14, "ammo": 30},
	"Rifle": {"damage": 28, "ammo": 24},
	"Sniper": {"damage": 100, "ammo": 5}
}

func _ready() -> void:
	health = GameState.player_health

func _physics_process(_delta: float) -> void:
	# TODO: Подключить мобильный джойстик и свайп управление камерой.
	pass

func take_damage(amount: int) -> void:
	health = max(health - amount, 0)
	GameState.player_health = health
	if health <= 0:
		queue_free()

func use_medkit(amount: int = 35) -> void:
	health = min(health + amount, 100)
	GameState.player_health = health

func switch_weapon(name: String) -> void:
	if weapons.has(name):
		GameState.selected_weapon = name
