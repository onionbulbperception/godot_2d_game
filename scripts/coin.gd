extends Area2D
## Script for player's interaction with the coin.
##
## Script establish communication between the player and the coins with
## on_body_entered signal.


# Communication between player's body and the coin
func _on_body_entered(body: Node2D) -> void:
	print("+1 coin!")
	queue_free()
