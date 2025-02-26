extends Control

@export var speaker: Label
@export var dialogue: Label
@export var scroll_container: ScrollContainer
@export var animation: AnimationPlayer
@export var font_italic: Font
@export var font_normal: Font

var is_scrolling: bool = false
var stop_typewriter: bool = false

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
	Global.is_dialogue_open = false
	animation.play("CLOSE")
