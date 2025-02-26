extends Control
@export var animation: AnimationPlayer

signal animation_played

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func appear():
	animation.play("FADE_IN")

func disappear():
	animation.play("FADE_OUT")

func emit_animation() -> void:
	animation_played.emit()
	print("Animation played, bro")
