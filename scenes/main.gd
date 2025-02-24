extends Node

var character_scenes: Dictionary
var character: Dictionary

# Character scenes
@export var hana_scene: PackedScene
@export var miki_scene: PackedScene

# Character instances
var hana: Control
var miki: Control

@export var hboxcontainer: HBoxContainer


func _ready() -> void:
	character_scenes = {
		Enums.Characters.HANA: hana_scene,
		Enums.Characters.MIKI: miki_scene
	}
	
	character = {
		Enums.Characters.HANA: hana,
		Enums.Characters.MIKI: miki
	}

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
