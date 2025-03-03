extends Area2D
## Script for player's interaction with the coins.
##
## Script establish communication between the player and the coins. When
## the player collides with a coin, it script calls game manager to increase
## score. After that removes the coin from the scene.


@onready var game_manage: Node = %GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

# Player collides with a coin
func _on_body_entered(body: Node2D) -> void:
	game_manage.add_point()
	animation_player.play("pickup")
