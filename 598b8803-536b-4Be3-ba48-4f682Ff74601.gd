extends Sprite2D

var speed=400.0
var screen_size=Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size=get_viewport_rect().size
	print(screen_size)
	




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction= Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		direction.x+=1
	
	if Input.is_action_pressed("move_left"):
		direction.x-=1
	
	
	
	
	if direction.length()>1:    
		direction=direction.normalized()
	
	position+=direction*speed*delta
	position.x=clamp(position.x,0,screen_size.x)


