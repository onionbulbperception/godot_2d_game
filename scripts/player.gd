extends CharacterBody2D
## Simple movement script for player's character.
##
## Script provides a basic framework for character movement using gravity
## handling, jumping, horizontal movement and applying velocity and slide.


const SPEED = 125.0
const JUMP_VELOCITY = -250.0


func _physics_process(delta: float) -> void:
	# Gravity handling
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Jumping
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Horizontal movement
	# TODO: Replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	# Apply velocity and slide
	move_and_slide()
