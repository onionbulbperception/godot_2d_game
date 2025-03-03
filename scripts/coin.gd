extends Area2D
## Script for player's interaction with the coins.
##
## Script establish communication between the player and the coins. When
## the player collides with a coin, it script calls game manager to increase
## score. After that removes the coin from the scene.


@onready var game_manage = %GameManager


# Player collides with a coin
func _on_body_entered(body: Node2D) -> void:
	game_manage.add_point()
	queue_free()
