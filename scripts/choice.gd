extends Button

@export var next: int = 0

func _ready() -> void:
	self.connect("pressed", _on_button_pressed)

func _on_button_pressed() -> int:
	print(next)
	return next
