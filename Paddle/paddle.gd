extends CharacterBody2D

@onready var paddle: CharacterBody2D = $"."

## Called when the node enters the scene tree for the first time.
func _ready() -> void:
	paddle.add_to_group("Paddle")
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#print("Active")
