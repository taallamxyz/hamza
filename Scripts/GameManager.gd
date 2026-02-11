extends Node

var coins = 0

# We create a custom signal so the UI knows when to update
signal score_changed(new_value)

func add_coin():
	coins += 1
	# Emit the signal whenever the score changes
	score_changed.emit(coins)
