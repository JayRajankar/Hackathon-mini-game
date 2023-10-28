extends Node2D

var orb_1=preload("res://orbr.tscn")
var orb_list=[
	preload("res://dendro.tscn"),
	preload("res://geo.tscn"),

	preload("res://dendro.tscn"),
	preload("res://orbr.tscn")
]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var orb=orb_.instance()
	orb.position=Vector2(randf_range(20,1000),-20)
	add_child(orb)
 
