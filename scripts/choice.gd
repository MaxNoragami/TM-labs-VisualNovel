extends Button

@export var next: int = 0
signal chosen_route 

func _ready() -> void:
	self.connect("pressed", _on_button_pressed)


func _on_button_pressed() -> void:
	print(next)
	chosen_route.emit(next)
