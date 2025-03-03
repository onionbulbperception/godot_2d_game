extends Node
## Script for managing game events
##
## Keeps score count for single run. Resets when game is restarted. Displays
## collected coins in score label.


var score: int = 0
@onready var score_label: Node = $ScoreLabel


func add_point() -> void:
	score += 1
	score_label.text = "You collected %s coins." % score
