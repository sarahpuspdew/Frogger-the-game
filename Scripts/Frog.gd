extends Area2D
class_name Frog

@export var tilemap : TileMap

var current_tile : Vector2i
var target_tile : Vector2i


func _ready():
	GameManager.life_lost.connect(_on_life_lost)


func _input(event):
	if event.is_action_pressed("up"):
		move(Vector2.UP)
	elif event.is_action_pressed("down"):
		move(Vector2.DOWN)
	elif event.is_action_pressed("left"):
		move(Vector2.LEFT)
	elif event.is_action_pressed("right"):
		move(Vector2.RIGHT)


func move(direction : Vector2):
	current_tile = tilemap.local_to_map(global_position)
	target_tile = Vector2i(
		current_tile.x + direction.x,
		current_tile.y + direction.y
	)
	
	# move player
	global_position = tilemap.map_to_local(target_tile)


func _on_life_lost():
	print("lost life")
