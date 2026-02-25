extends Node

@onready var paddle_scene = preload("res://Paddle/paddle.tscn")
var velocity = 0 
var paddle = 0

func _ready() -> void:
	paddle = paddle_scene.instantiate()
	var screen_size = get_viewport().get_visible_rect().size
	print(screen_size)
	add_child(paddle)
	
	paddle.position.x = screen_size.x/2
	paddle.position.y = screen_size.y - 20

func _physics_process(delta: float) -> void:
	var speed = 10
	var dir = 0
	#print("moving...")
	if Input.is_action_pressed("move_left"):
		#print("Moving left..")
		dir -=1
	if Input.is_action_pressed("move_right"):
		dir +=1
	
	velocity = speed * dir
	paddle.position.x += velocity
	
