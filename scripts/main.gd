extends Node

signal parse_next_node
#signal skip_yapping

var character_scenes: Dictionary
var character: Dictionary

var current_node: int = 0

var is_autoplay_on: bool = false
var autoplay_count: int = 0
var autoplay_goal: int = 0

# Character / scenes / others
@export var story: Story
@export var hana_scene: PackedScene
@export var miki_scene: PackedScene
@export var dialogue_scene: PackedScene
@export var bg: Control
@export var blackout: Control
@export var audio_bg: AudioStreamPlayer
@export var choice_control: Control
@export var end_title: Control

@export var bg_textures: Dictionary = {
	Enums.Background.NOON : preload("res://styles/noon_style.tres"),
	Enums.Background.NIGHT : preload("res://styles/night_style.tres"),
}

@export var audio_tracks: Dictionary = {
	Enums.Audio.MENU : preload("res://audio/medieval.ogg"),
	Enums.Audio.GAMEPLAY : preload("res://audio/gameplay.mp3"),
}

var current_text: String
var current_speaker
var talking_char: Control = null
var is_talker: bool = false

# Character instances
var hana: Control
var miki: Control
var dialogue: Control = null

@export var hboxcontainer: HBoxContainer
var some_text: String = "Detective Graves stood before the gathered household members, his eyes scanning the room like a hawk searching for the slightest crack in their composure. The fireplace crackled softly, casting flickering shadows across the mahogany walls. The air was heavy, filled with unspoken accusations. We’re going to do this the simple way. I ask questions. You answer honestly. If I find out anyone is lying to me—well, let’s just say I’m good at uncovering secrets. Detective Graves stood before the gathered household members, his eyes scanning the room like a hawk searching for the slightest crack in their composure. The fireplace crackled softly, casting flickering shadows across the mahogany walls. The air was heavy, filled with unspoken accusations. We’re going to do this the simple way. I ask questions. You answer honestly. If I find out anyone is lying to me—well, let’s just say I’m good at uncovering secrets."


func _ready() -> void:
	connect("parse_next_node", next)
	choice_control.connect("next_route", route_choice)
	#connect("skip_yapping", skip_yap)
	
	character_scenes = {
		Enums.Characters.HANA: hana_scene,
		Enums.Characters.MIKI: miki_scene
	}
	
	character = {
		Enums.Characters.HANA: hana,
		Enums.Characters.MIKI: miki
	}
	
	print(story.STORY[1])

func _input(event) -> void:
	if(event.is_action_pressed("add_hana")):
		add_char(Enums.Characters.HANA, Enums.Pose.UPSET)
	if(event.is_action_pressed("add_miki")):
		add_char(Enums.Characters.MIKI, Enums.Pose.UPSET)
	if(event.is_action_pressed("remove_hana")):
		remove_char(Enums.Characters.HANA)
	if(event.is_action_pressed("remove_miki")):
		remove_char(Enums.Characters.MIKI)
	if(event.is_action_pressed("zoom_in_hana")):
		character[Enums.Characters.HANA].zoom_in()
	if(event.is_action_pressed("zoom_out_hana")):
		character[Enums.Characters.HANA].zoom_out()
	if(event.is_action_pressed("zoom_in_miki")):
		character[Enums.Characters.MIKI].zoom_in()
	if(event.is_action_pressed("zoom_out_miki")):
		character[Enums.Characters.MIKI].zoom_out()
	if(event.is_action_pressed("talk_miki")):
		character[Enums.Characters.MIKI].talk()
	if(event.is_action_pressed("silence_miki")):
		character[Enums.Characters.MIKI].silence()
	if(event.is_action_pressed("talk_hana")):
		character[Enums.Characters.HANA].talk()
	if(event.is_action_pressed("silence_hana")):
		character[Enums.Characters.HANA].silence()
	if(event.is_action_pressed("open_d")):
		add_dialogue()
	if(event.is_action_pressed("close_d")):
		dialogue.close()
	if(event.is_action_pressed("char_by_char")):
		char_by_char( some_text, "Masha")
	if(event.is_action_pressed("full_text")):
		set_full_text( some_text, "Masha")
	if(event.is_action_pressed("change_bg1")):
		bg.change(bg_textures[1])
	if(event.is_action_pressed("change_bg0")):
		bg.change(bg_textures[0])
	if(event.is_action_pressed("black_on")):
		blackout.appear()
	if(event.is_action_pressed("black_off")):
		blackout.disappear()
	if(event.is_action_pressed("audio1")):
		audio_bg.play_track(audio_tracks[Enums.Audio.MENU])
	if(event.is_action_pressed("audio2")):
		audio_bg.play_track(audio_tracks[Enums.Audio.GAMEPLAY])
	if(event.is_action_pressed("stop")):
		audio_bg.stop_track()
	if(event.is_action_pressed("next")):
		if(Global.is_yapping):
			skip_yap(current_text, current_speaker)
		else:
			next()

# CHARACTERS RELATED ---------------------------------------------
func add_char(choice, pose) -> void:
	if character_scenes.has(choice):
		var char_instance: Control = character_scenes[choice].instantiate()
		character[choice] = char_instance
		hboxcontainer.add_child(char_instance)
		update_char_pose(char_instance, pose)
		char_instance.appear()
		resize_gap()
	else:
		push_error("Tried adding unknown char to scene.")

func remove_char(choice) -> void:
	if character_scenes.has(choice):
		if character[choice] != null:
			character[choice].disappear()
		else:
			push_error("Tried removing a null instance from scene.")
	else:
		push_error("Tried removing unknown instance from scene.")

func update_char_pose(character: Control, pose):
	character.update_pose(int(pose))

func resize_gap() -> void:
	var children_count = hboxcontainer.get_child_count()
	match children_count:
		7:
			hboxcontainer.add_theme_constant_override("separation", 20)
		6:
			hboxcontainer.add_theme_constant_override("separation", 23)
		5:
			hboxcontainer.add_theme_constant_override("separation", 26)
		4:
			hboxcontainer.add_theme_constant_override("separation", 27)
		3:
			hboxcontainer.add_theme_constant_override("separation", 42)
		2:
			hboxcontainer.add_theme_constant_override("separation", 55)
		1:
			hboxcontainer.add_theme_constant_override("separation", 55)
		_:
			hboxcontainer.add_theme_constant_override("separation", 15)

# DIALOGUE RELATED ---------------------------------------------
func add_dialogue(name = "Unknown"):
	if(dialogue == null):
		var dialogue_instance: Control = dialogue_scene.instantiate()
		dialogue = dialogue_instance
		$".".add_child(dialogue_instance)
		dialogue.set_speaker(name)
		dialogue.appear()
		dialogue.connect("dialogue_closed", _on_dialogue_closed)
		dialogue.connect("yapping_completed", _on_yapping_completed)
	else:
		push_error("An instance of the dialogue already exists")

func char_by_char(text, username):
	if(dialogue != null):
		dialogue.typewrite_text(text, username)
	else:
		push_error("Null dialogue reference!")

func set_full_text(text, username):
	if(dialogue != null):
		dialogue.full_text(text, username)
	else:
		push_error("Null dialogue reference!")


# The main deal ---------------------------------------------

func next():
	if(current_node < story.STORY.size()):
		choose_node()
		#current_node += 1
	else:
		push_error("There are no nodes left!")

func skip_yap(text, speaker):
	set_full_text(text, speaker)

func choose_node():
	print("GOAL: " + str(autoplay_goal))
	print("COUNT: " + str(autoplay_count))
	if(current_node >= 0):
		if(autoplay_count - 1 > -1 && autoplay_goal - 1>  -1 && autoplay_count - 1 == autoplay_goal - 1):
			is_autoplay_on = false
			autoplay_count = 0
			autoplay_goal = 0
			print("AUTOPLAY IS FALSE")
		if(is_autoplay_on):
			autoplay_delay(2.0)
		
		if(story.STORY[current_node]["type"] != Enums.Type.DIALOGUE):
			is_talker = false
			if(talking_char != null):
				talking_char.silence()
				talking_char = null
		
		match story.STORY[current_node]["type"]:
		
			Enums.Type.SET_SCENE:
				print("SET_SCENE")
				var background_scene = bg_textures[int(story.STORY[current_node]["background"])]
				bg.change(background_scene)
				current_node += 1
				
				if(is_autoplay_on):
					autoplay_count += 1
				
				parse_next_node.emit()
			
			Enums.Type.PLAY_SONG:
				print("PLAY_SONG")
				if(story.STORY[current_node]["song"] == Enums.Audio.NONE):
					audio_bg.stop_track()
				else:
					audio_bg.play_track(audio_tracks[story.STORY[current_node]["song"]])
				current_node += 1
				
				if(is_autoplay_on):
					autoplay_count += 1
				
				parse_next_node.emit()
			
			Enums.Type.VISION_EFFECT:
				print("VISION_EFFECT")
				if(story.STORY[current_node]["effect"] == Enums.Vision.FADE_IN):
						blackout.visible = true
						blackout.appear()
				elif(story.STORY[current_node]["effect"] == Enums.Vision.FADE_OUT):
						blackout.disappear()
				elif(story.STORY[current_node]["effect"] == Enums.Vision.BLACKOUT):
						blackout.blackout()
						if(is_autoplay_on):
							autoplay_count += 1
							await autoplay_delay(5)
							parse_next_node.emit()
			
			Enums.Type.DIALOGUE:
				print("DIALOGUE")
				current_text = story.STORY[current_node]["text"]
				
				if character.has(story.STORY[current_node]["speaker"]):
					if(character[story.STORY[current_node]["speaker"]] != null):
						if(talking_char == null || character[story.STORY[current_node]["speaker"]] != talking_char):
							talking_char = character[story.STORY[current_node]["speaker"]]
							current_speaker = talking_char.get_username()
							talking_char.talk()
					else:
						push_error("This character " + str(story.STORY[current_node]["speaker"]) + " has not been instantiated yet!")
				else:
					current_speaker = story.STORY[current_node]["speaker"]
				current_node += 1
				
				if(!Global.is_dialogue_open):
					add_dialogue(current_speaker)
					dialogue.text_normal()
					char_by_char(current_text, current_speaker)
				elif(Global.is_dialogue_open):
					dialogue.text_normal()
					char_by_char(current_text, current_speaker)
				else:
					push_error("Error determining the dialogue's state")
			
			Enums.Type.CHARACTER:
				print("CHARACTER")
				var current_char = story.STORY[current_node]["who"]
				var current_pose = story.STORY[current_node]["pose"]
				var current_action = story.STORY[current_node]["action"]
				if(character[current_char] == null && current_action == Enums.Action.FADE_IN):
					add_char(current_char, current_pose)
					current_node += 1
				elif(character[current_char] != null && current_action == Enums.Action.FADE_OUT):
					remove_char(current_char)
					current_node += 1
				elif(character[current_char] != null):
					update_char_pose(character[current_char], current_action)
					current_node += 1
				else:
					push_error("Failed to deal with CHAR")
				if(is_autoplay_on):
					autoplay_delay(1.2)
					autoplay_count += 1
					parse_next_node.emit()
		
			Enums.Type.INNER_DIALOGUE:
				print("INNER_DIALOGUE")
				current_text = story.STORY[current_node]["text"]
				current_speaker = story.STORY[current_node]["speaker"]
				current_node += 1
				if(!Global.is_dialogue_open):
					add_dialogue(current_speaker)
					dialogue.text_italic()
					char_by_char(current_text, current_speaker)
				elif(Global.is_dialogue_open):
					dialogue.text_italic()
					char_by_char(current_text, current_speaker)
				else:
					push_error("Error determining the dialogue's state")
		
			Enums.Type.CHOICE:
				print("CHOICE")
				var current_choices: Array = story.STORY[current_node]["choices"]
				choice_control.add_choice(current_choices)
	
			Enums.Type.AUTOPLAY:
				print("AUTOPLAY")
				is_autoplay_on = true
				autoplay_count = 0
				autoplay_goal = story.STORY[current_node]["until"] - current_node
				
				current_node += 1
				parse_next_node.emit()
			Enums.Type.TIMER:
				print("TIMER")
			Enums.Type.END:
				print("END")
				current_node = 0
				
				blackout.visible = true
				end_title.visible_off()
				audio_bg.play_track(audio_tracks[Enums.Audio.MENU])
				
				
			Enums.Type.WIN:
				print("WIN")
				blackout.visible = true
				blackout.blackout()
				end_title.visible_on()
				end_title.set_label_text(story.STORY[current_node]["ending"])
				end_title.appear()
				current_node += 1
				
			Enums.Type.CLOSE_DIALOGUE:
				print("CLOSE_DIALOGUE")
				if(dialogue != null):
					print("CLOSED")
					dialogue.close()
				else:
					push_error("No instance of 'dialogue' to close!")
					# AnimationPlay signal to be added, so it calls _on_black_control_animation_played()
			_:
				push_error("Failed to match an unknown type of story node")


func _on_black_control_animation_played() -> void:
	blackout.visible = false
	current_node += 1
	
	if(is_autoplay_on):
		autoplay_count += 1
		await autoplay_delay(1.2)
	
	parse_next_node.emit()

func _on_dialogue_closed() -> void:
	print("In dialogue closed")
	current_node += 1
	
	if(is_autoplay_on):
		autoplay_count += 1
		autoplay_delay(1.2)
	
	parse_next_node.emit()

func _on_yapping_completed() -> void:
	print("Yapping completed")
	if(is_autoplay_on):
		autoplay_count += 1
		parse_next_node.emit()

func route_choice(node: int) -> void:
	print("In main")
	current_node = node
	if(choice_control != null):
		choice_control.remove_choices()
	else:
		print("Null reference to choice control")
	parse_next_node.emit()

func autoplay_delay(seconds: float) -> void:
	if is_autoplay_on:
		await get_tree().create_timer(seconds).timeout
