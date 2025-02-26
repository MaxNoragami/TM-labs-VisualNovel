extends Node

@export var choice_scene: PackedScene
@export var vboxcontainer: VBoxContainer
var choices_instances: Array

signal next_route

func add_choice(choices_inputs: Array):
	for choice_input in choices_inputs:
		var choice_instance: Button = choice_scene.instantiate()
		choice_instance.text = choice_input["option"]
		choice_instance.next = choice_input["next"]
		choice_instance.connect("chosen_route",signal_next_route )
		choices_instances.append(choice_instance)
		vboxcontainer.add_child(choice_instance)

func remove_choices():
	if(choices_instances != null):
		for choice in choices_instances:
			choice.queue_free()
		choices_instances.clear()
	else:
		push_error("Reference to null choices_control instance?")

func signal_next_route(int):
	print("Em")
	next_route.emit(int)
