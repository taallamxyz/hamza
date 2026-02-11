extends Area2D

@onready var _audio_player = $AudioStreamPlayer2D
@onready var _sprite = $Sprite2D
@onready var _collision = $CollisionShape2D

func _on_body_entered(body: Node2D) -> void:
	# Check if the player is the one who touched it
	if body.is_in_group("player"):
		collect()

func collect():
	GameManager.add_coin() # Tell the global script to add 1
	_audio_player.play()
	_sprite.visible = false
	_collision.set_deferred("disabled", true)
	await _audio_player.finished
	queue_free()
