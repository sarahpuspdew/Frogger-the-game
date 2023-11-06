extends Area2D


func _ready():
	self.area_entered.connect(_on_area_entered)


func _on_area_entered(area):
	if area is Frog:
		GameManager.life_lost.emit()
