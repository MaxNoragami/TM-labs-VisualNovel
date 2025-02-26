extends Node

@export var choice_scene: PackedScene
@export var vboxcontainer: VBoxContainer
var choices_instances: Array


func add_choice(choices_inputs: Array[Dictionary]):
	for choice_input in choices_inputs:
		var choice_instance: Button = choice_scene.instantiate()
		choice_instance.text = choice_input["option"]
		choice_instance.next = choice_input["next"]
		choices_instances.append(choice_instance)
		vboxcontainer.add_child(choice_instance)

func remove_choices():
	for choice in choices_instances:
		choice.queue_free()
