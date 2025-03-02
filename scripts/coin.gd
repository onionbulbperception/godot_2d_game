extends Area2D
## Script for player's interaction with the coins.
##
## Script establish communication between the player and the coins. When
## the player collides with a coin, it prints message that indicates
## that a coin has been collected and then removes the coin from the scene.


# Player collides with a coin
func _on_body_entered(body: Node2D) -> void:
	print("+1 coin!")
	queue_free()
