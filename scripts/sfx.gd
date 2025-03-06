extends Node

#@export var audio_tracks: Dictionary = {
	#Enums.Audio.MENU : preload("res://audio/medieval.ogg"),
	#Enums.Audio.GAMEPLAY : preload("res://audio/gameplay.mp3"),
#}
@export var audio_player: AudioStreamPlayer

func play_track(track):
	audio_player.stream = track
	audio_player.play()

func stop_track():
	audio_player.stop()
