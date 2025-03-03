extends Node2D
## Script for enemy's logic.
##
## Updates enemy's position based on its current direction and speed. Also
## checks for collision using the ray cast to change the direction and
## flip the sprite accordingly.


const SPEED = 60
var direction = 1
@onready var animated_sprite = $AnimatedSprite2D
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft


func _process(delta: float) -> void:
	# Check direction
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	# Update position
	position.x += direction * SPEED * delta
