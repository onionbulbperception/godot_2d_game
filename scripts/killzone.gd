extends Area2D
## Script for player's interaction with the killzone.
##
## Script handles the interaction between a player's body and a killzone,
## as well as reloading the current scene upon detecting a collision. Timer
## is used to manage the delay before the level is reloaded.


@onready var timer = $Timer


# Player collides with a killzone
func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	
	# Half the game speed
	Engine.time_scale = 0.5
	# Remove player's collision
	body.get_node("CollisionShape2D").queue_free() 
	timer.start()


# Reload level
func _on_timer_timeout() -> void:
	# Set game speed back to original
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
