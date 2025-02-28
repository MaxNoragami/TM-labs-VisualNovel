extends Node

@export var data: Dictionary = {}  # Initially empty
var title: String = ""

signal selected_save

# Call this method to update the button's data and optionally update its display text.
func set_save_data(save_title: String, node: int, clues: Array, last_node: int) -> void:
	title = save_title
	data = { save_title: {"node": node, "clues": clues, "last_node" : last_node} }
	# If this node is a Button, update its text to reflect the save title.
	self.text = save_title

func _on_pressed() -> void:
	selected_save.emit(data, title)
