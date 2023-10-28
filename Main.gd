extends Node


var orbs_scene = preload("res://orbs.tscn")# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var orbs = orbs_scene.instance()
	orbs.position = Vector2(randf_range(20, 1000), -20)
	add_child(orbs)
