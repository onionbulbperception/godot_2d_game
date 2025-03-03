extends Node
## PLACEHOLDER:Script for player's interaction with the killzone.
##
## PLACEHOLDER:Script handles the interaction between a player's body and a killzone,


var score: int = 0
@onready var score_label: Node = $ScoreLabel


func add_point() -> void:
	score += 1
	score_label.text = "You collected %s coins." % score
