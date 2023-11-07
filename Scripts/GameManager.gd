extends Node

signal life_lost
signal game_lost
signal game_won
signal frog_entered_home

var frogs : int = 5
var life : int = 3
var score : int = 0
var best_score : int = 0


func _ready():
	frog_entered_home.connect(_on_frog_entered_home)
	life_lost.connect(_on_life_lost)


func _on_frog_entered_home():
	frogs -= 1
	
	if frogs <= 0:
		game_won.emit()


func _on_life_lost():
	life -= 1
	
	if life <= 0:
		game_lost.emit()
