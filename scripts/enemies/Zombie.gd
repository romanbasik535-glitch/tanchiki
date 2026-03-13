extends CharacterBody3D

@export var speed: float = 2.4
@export var max_health: int = 100
@export var attack_damage: int = 10

var health: int
var target: Node3D

func _ready() -> void:
	health = max_health
	target = get_tree().get_first_node_in_group("player") as Node3D

func _physics_process(_delta: float) -> void:
	if target == null:
		return
	# TODO: добавить полноценный навмеш для преследования.

func apply_damage(amount: int) -> void:
	health -= amount
	if health <= 0:
		queue_free()
