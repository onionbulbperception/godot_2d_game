extends CharacterBody2D
## Simple movement script for player's character.
##
## Script provides a basic framework for character movement using gravity
## handling, jumping, horizontal movement and applying velocity. Also script
## handles playin player's animations based on input.


const SPEED = 125.0
const JUMP_VELOCITY = -250.0
@onready var animated_sprite = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	# Gravity handling
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Jumping
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Horizontal movement
	var direction := Input.get_axis("move_left", "move_right")
	
	# Sprite flipping
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	
	# Play animations
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")

	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Apply velocity and slide
	move_and_slide()
