extends RigidBody2D

func _on_body_entered(body: Node) -> void:
	print("Body entered: ", body)
	var is_paddle = 1 if body.is_in_group("Paddle") else 0
	print(is_paddle)
	if is_paddle:
		print("Paddle detected")
