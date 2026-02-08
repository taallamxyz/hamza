extends CanvasLayer

@onready var label = $VBoxContainer/Label

func _ready():
	# Connect to the signal we created in GameManager
	GameManager.score_changed.connect(_on_score_changed)

func _on_score_changed(new_value):
	# Update the text whenever the signal is received
	label.text = str(new_value)
