extends Node

@onready var paddle_scene = preload("res://Paddle/paddle.tscn")
@onready var ball_scene = preload("res://Ball/ball.tscn")
var velocity = 0 
var paddle = 0
var ball = 0

func _ready() -> void:
	var screen_size = get_viewport().get_visible_rect().size
	paddle = paddle_scene.instantiate()
	ball = ball_scene.instantiate()
	print(screen_size)
	add_child(paddle)
	add_child(ball)
	
	paddle.position.x = screen_size.x/2
	paddle.position.y = screen_size.y - 20
	
	ball.position = screen_size/2

func _physics_process(delta: float) -> void:
	var speed = 500
	var dir = 0
	#print("moving...")
	if Input.is_action_pressed("move_left"):
		#print("Moving left..")
		dir -=.5
	if Input.is_action_pressed("move_right"):
		dir +=.5
	
	velocity = speed * dir * delta

	paddle.position.x += velocity

	var screen_width = get_viewport().get_visible_rect().size.x

	# Clamp keeps paddle inside screen
	paddle.position.x = clamp(paddle.position.x, 50, screen_width - 50)
	
