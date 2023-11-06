extends Node

signal life_lost
signal game_lost

var life : int = 3
var score : int = 0
var best_score : int = 0


func _ready():
	life_lost.connect(_on_life_lost)


func _on_life_lost():
	life -= 1
	
	if life <= 0:
		game_lost.emit()
