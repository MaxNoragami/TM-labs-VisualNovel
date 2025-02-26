extends Node

@export var newgame_btn: Button
@export var loadgame_btn: Button
@export var credits_btn: Button
@export var loadgame_win: PanelContainer
@export var credits_win: PanelContainer
@export var pop_outs: MarginContainer

func _ready() -> void:
	loadgame_win.visible = false
	credits_win.visible = false
	pop_outs.visible = false

func _on_new_game_pressed() -> void:
	pass # Replace with function body.


func _on_load_game_pressed() -> void:
	pop_outs.visible = true
	loadgame_win.visible = true


func _on_credits_pressed() -> void:
	pop_outs.visible = true
	credits_win.visible = true


func _on_button_pressed() -> void:
	loadgame_win.visible = false
	pop_outs.visible = false


func _on_button_close_credits_pressed() -> void:
	credits_win.visible = false
	pop_outs.visible = false
