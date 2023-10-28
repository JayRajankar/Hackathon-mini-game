extends Area2D

@export var speed = 150
func _physics_process(delta):
	global_position.y += speed * delta





func _on_area_2d_area_entered(area):
	print("collided")


func _on_area_2d_body_entered(body):
	if body.is_in_group("598b8803-536b-4Be3-ba48-4f682Ff74601"):
		body.game_over()
		
