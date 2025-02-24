extends Control

@onready var speaker = $MarginContainer/VBoxContainer/HBoxContainer/PanelContainer/Margin/Speaker
@onready var dialogue = $MarginContainer/VBoxContainer/VBoxContainer/Dialogue/DialogueBorder/Margin/ScrollContainer/Dialogue
@onready var scroll_container = $MarginContainer/VBoxContainer/VBoxContainer/Dialogue/DialogueBorder/Margin/ScrollContainer
@onready var animation = $AnimationPlayer

var is_scrolling: bool = false
var stop_typewriter: bool = false

func _ready() -> void:
	pass

func typewrite_text(text, name) -> void:
	dialogue.visible_characters = 0
	dialogue.text = text
	speaker.text = name
	
	is_scrolling = true
	stop_typewriter = false
	
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
		
	is_scrolling = false

func auto_scroll() -> void:
	while is_scrolling:
		await get_tree().process_frame  # Wait for UI update
		scroll_container.scroll_vertical = scroll_container.get_v_scroll_bar().max_value

func full_text(text, name) -> void:
	stop_typewriter = true
	dialogue.visible_characters = dialogue.text.length()
	is_scrolling = false


func set_speaker(name) -> void:
	speaker.text = name

func remove_self() -> void:
	self.queue_free()

# Animation related
func appear() -> void:
	animation.play("APPEAR")

func close() -> void:
	animation.play("CLOSE")
