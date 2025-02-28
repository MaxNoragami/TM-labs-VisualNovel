extends Node

@export var newgame_btn: Button
@export var loadgame_btn: Button
@export var credits_btn: Button
@export var loadgame_win: PanelContainer
@export var credits_win: PanelContainer
@export var pop_outs: MarginContainer
@export var save_state_scene: PackedScene
@export var save_state_grid: VBoxContainer

signal game_started
signal access_load
signal close_load
signal load_started

var states: Array = []

func _ready() -> void:
	#clear_save_file()
	# Check if the save file exists in user:// and create it if it doesn't.
	if not FileAccess.file_exists("user://save_states.json"):
		var file = FileAccess.open("user://save_states.json", FileAccess.WRITE)
		file.store_string("{}") # Write an empty JSON object
		file.close()
	
	loadgame_win.visible = false
	credits_win.visible = false
	pop_outs.visible = false

func hide():
	self.visible = false
	credits_win.visible = false
	pop_outs.visible = false
	loadgame_win.visible = false

func show():
	self.visible = true

func save_state(save_title: String, node: int, clues: Array, last_node: int) -> void:
	var save_data: Dictionary = {}
	
	# Open and read the existing file.
	var file = FileAccess.open("user://save_states.json", FileAccess.READ)
	if file:
		var file_content = file.get_as_text()
		file.close()
		
		# Create a JSON instance and parse the file content.
		var json = JSON.new()
		var parse_result = json.parse(file_content)
		if parse_result == OK:
			save_data = json.get_data()
		else:
			print("Error parsing save file. Starting with empty save data.")
	else:
		print("Error opening save file for reading.")
	
	# Update or add the save state using the save_title as the key.
	save_data[save_title] = {"node": node, "clues": clues, "last_node": last_node}
	
	# Convert the updated dictionary back to a JSON string.
	var new_json = JSON.new()
	var json_string = new_json.stringify(save_data)
	
	# Write the updated data back to the file.
	file = FileAccess.open("user://save_states.json", FileAccess.WRITE)
	file.store_string(json_string)
	file.close()
	
func print_json_contents() -> void:
	var file = FileAccess.open("user://save_states.json", FileAccess.READ)
	if file:
		var contents = file.get_as_text()
		print("JSON Contents: ", contents)
		file.close()
	else:
		print("Unable to open save_states.json for reading.")

# This function clears the save file by overwriting it with an empty JSON object.
func clear_save_file() -> void:
	var file = FileAccess.open("user://save_states.json", FileAccess.WRITE)
	if file:
		file.store_string("{}")
		file.close()
		print("Save file cleared.")
	else:
		print("Unable to open save file for writing.")

func _on_new_game_pressed() -> void:
	game_started.emit(0)

func _on_load_game_pressed() -> void:
	pop_outs.visible = true
	loadgame_win.visible = true
	access_load.emit()
	# Populate the UI with save state instances.
	add_save_states()

func _on_credits_pressed() -> void:
	pop_outs.visible = true
	credits_win.visible = true

func _on_button_pressed() -> void:
	loadgame_win.visible = false
	pop_outs.visible = false
	# Clear the instantiated save state nodes when closing the load window.
	clear_save_states_nodes()
	close_load.emit()

func _on_button_close_credits_pressed() -> void:
	credits_win.visible = false
	pop_outs.visible = false

func add_save_states() -> void:
	# First, clear any previously added save state nodes.
	clear_save_states_nodes()
	
	# Open and read the save file.
	var file = FileAccess.open("user://save_states.json", FileAccess.READ)
	if file:
		var file_content = file.get_as_text()
		file.close()
		
		var json = JSON.new()
		var err = json.parse(file_content)
		if err == OK:
			var save_data = json.get_data() as Dictionary
			for save_title in save_data.keys():
				var entry = save_data[save_title] as Dictionary
				var node_val = entry.get("node")
				var clues = entry.get("clues")
				var last_node = entry.get("last_node")
				# Instantiate a new save state button (or node) instance.
				var save_instance = save_state_scene.instantiate()
				# Populate its data using the new method.
				if save_instance.has_method("set_save_data"):
					save_instance.set_save_data(save_title, node_val, clues, last_node)
				# Connect its signal and add it to the container.
				save_instance.connect("selected_save", loaded_save)
				save_state_grid.add_child(save_instance)
				# Add the instance to the states array.
				states.append(save_instance)
		else:
			print("Error parsing JSON in add_save_states")
	else:
		print("Unable to open save file in add_save_states")

# This function clears the 'states' array and frees the corresponding nodes.
func clear_save_states_nodes() -> void:
	if states:
		for state in states:
			if is_instance_valid(state):
				state.queue_free()
		states.clear()

func loaded_save(data: Dictionary, title: String):
	print(data)
	load_started.emit(data, title)
