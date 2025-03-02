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
	timer.start()


# Reload level
func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
