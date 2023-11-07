extends Area2D

var home_frog = preload("res://Assets/Sprite/HomeFrog.png")
var occupied : bool = false


func _ready():
	$Sprite2D.hide()


func _on_area_entered(area):
	if area is Frog:
		var frog = area
		
		if not occupied:
			enter_home(frog)
			GameManager.frog_entered_home.emit()


func enter_home(area : Area2D):
	occupied = true
	area.queue_free()
	$Sprite2D.show()
