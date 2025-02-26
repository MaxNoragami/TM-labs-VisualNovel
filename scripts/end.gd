extends Node

@export var animation: AnimationPlayer
@export var label: Label

func _ready() -> void:
	self.visible = false

func set_label_text(input_text):
	label.text = input_text

func appear():
	animation.play("FADE_IN")

func visible_on():
	self.visible = true
	
func visible_off():
	self.visible = false
