extends Control

@export var speaker: Label
@export var dialogue: Label
@export var scroll_container: ScrollContainer
@export var animation: AnimationPlayer
@export var font_italic: Font
@export var font_normal: Font
@export var save_button: Button
@export var save_window: MarginContainer
@export var save_title_btn: Button
@export var cancel_btn: Button
@export var input_line: LineEdit

@export var clues_win: MarginContainer
@export var clue_scene: PackedScene
@export var clues_button: Button
@export var vboxclues: VBoxContainer

signal dialogue_closed
signal yapping_completed
signal save_pressed
signal save_window_opened
signal save_window_closed

var is_scrolling: bool = false
var stop_typewriter: bool = false
var save_title: String = ""

func typewrite_text(text, name) -> void:
	dialogue.visible_characters = 0
	dialogue.text = text
	speaker.text = name
	
	is_scrolling = true
	stop_typewriter = false
	Global.is_yapping = true
	# Start making tha text appear char by char
	auto_scroll()
	
	for i in dialogue.text.length():
		if stop_typewriter:
			is_scrolling = false
			stop_typewriter = false
			full_text(text, name)
			return
			
		# Make text appear char by char
		dialogue.visible_characters += 1
		await get_tree().create_timer(0.05).timeout
	
	Global.is_yapping = false
	is_scrolling = false
	yapping_completed.emit()

func auto_scroll() -> void:
	while is_scrolling:
		await get_tree().process_frame  # Wait for UI update
		scroll_container.scroll_vertical = scroll_container.get_v_scroll_bar().max_value

func full_text(text, name) -> void:
	Global.is_yapping = false
	stop_typewriter = true
	dialogue.visible_characters = dialogue.text.length()
	is_scrolling = false

func text_italic():
	dialogue.add_theme_font_override("font", font_italic)

func text_normal():
	dialogue.add_theme_font_override("font", font_normal)

func clear_text() -> void:
	dialogue.text = "[ ... ]"

func set_speaker(name) -> void:
	speaker.text = name

func remove_self() -> void:
	self.queue_free()

# Animation related
func appear() -> void:
	Global.is_dialogue_open = true
	animation.play("APPEAR")

func close() -> void:
	mouse_filter = Control.MOUSE_FILTER_IGNORE
	Global.is_dialogue_open = false
	animation.play("CLOSE")
	

func emit_close() -> void:
	dialogue_closed.emit()
	print("Dialogue closed, bro")


func _on_save_pressed() -> void:
	save_button.release_focus() 
	save_window.visible = true
	save_window_opened.emit()


func _on_cancel_save_pressed() -> void:
	save_window.visible = false
	cancel_btn.release_focus() 
	save_window_closed.emit()


func _on_save_title_pressed() -> void:
	save_title = input_line.text
	save_title_btn.release_focus()
	save_window.visible = false
	save_window_closed.emit()
	save_pressed.emit(save_title)


func _on_clues_pressed() -> void:
	clues_button.release_focus()
	clues_win.visible = true
	
	# Clear any existing clues (if necessary)
	for child in vboxclues.get_children():
		child.queue_free()
	
	# Create new instances based on Global.current_clues
	for clue_text in Global.current_clues:
		var clue_instance = clue_scene.instantiate()
		# Assuming the clue instance is a Label or has a method to set its text.
		if clue_instance is Label:
			clue_instance.text = clue_text
		elif clue_instance.has_method("set_text"):
			clue_instance.set_text(clue_text)
		else:
			# Alternatively, if the text label is a child node, for example:
			var label = clue_instance.get_node("Label")
			if label:
				label.text = clue_text
		vboxclues.add_child(clue_instance)

func _on_close_clues_pressed() -> void:
	clues_win.visible = false
	
	# Remove all children from the vboxclues container.
	for child in vboxclues.get_children():
		child.queue_free()
