extends Area2D


func _on_area_entered(area):
	if area is Frog:
		GameManager.life_lost.emit()
