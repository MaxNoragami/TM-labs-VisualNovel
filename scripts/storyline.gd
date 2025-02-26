extends Node

class_name Story

var STORY = {
	0 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.NOON
	},
	
	1 : {
		"type" : Enums.Type.PLAY_SONG,
		"song" : Enums.Audio.GAMEPLAY
	},
	
	2 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},

	3 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "What a wonderful day!"
	},

	4 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HANA,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.SMILE,
	},

	5 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HANA,
		"text" : "Good morning, " + Global.username + "!",
	},

	6 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.MIKI,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.HAPPY,
	},

	7 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.MIKI,
		"text" : "Good morning, " + Global.username + "-sama!"
	},

	8 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : Global.username,
		"text" : "Should I say anything?"
	},

	9 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Greet them back", "next" : 23},
			{"option" : "Go to node 7", "next" : 7},
			{"option" : "Ignore them", "next" : 10}
		]
	},

	10 : {
		"type" : Enums.Type.AUTOPLAY,
		"until" : 20
	},

	11 : {
		"type" : Enums.Type.PLAY_SONG,
		"song" : "none"
	},

	12 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HANA,
		"action" : Enums.Action.NONE, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET
	},

	13 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.MIKI,
		"action" : Enums.Action.NONE, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET
	},

	14 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.MIKI,
		"text" : "Oh, we see how it is..."
	},

	15 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},

	16 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HANA,
		"action" : Enums.Action.ZOOM_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET
	},

	17 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.MIKI,
		"action" : Enums.Action.ZOOM_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET
	},

	18 : {
		"type" : Enums.Type.PLAY_SONG,
		"song" : Enums.Audio.MENU
	},

	19 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},

	20 : {
		"type" : Enums.Type.TIMER,
		"effect" : 1500 # In milliseconds
	},

	21 : {
		"type" : Enums.Type.DEATH	# Shows a death title screen
	},

	22 : {
		"type" : Enums.Type.END # Goes to main menu
	},

	23 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "Good morning, fellas!"
	},

	24 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.MIKI,
		"text" : "UwU, Imma cook breakfast!"
	},

	25 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.MIKI,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE
	},

	26 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HANA,
		"text" : "Imma make your bed!"
	},

	27 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	28 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT # CLOSE_EYES, FADE_IN, FADE_OUT, DIZZINESS, WOUNDED, BLACOUT
	},

	29 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HANA,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE
	},

	30 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.NIGHT
	},

	31 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN # CLOSE_EYES, FADE_IN, FADE_OUT, DIZZINESS, WOUNDED, BLACOUT
	},

	32 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : Global.username,
		"text" : "Mmmmm... What's this lovely smell?"
	},

	33 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.MIKI,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : 0
	},

	34 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.MIKI,
		"text" : "Let's eat!"
	},  

	35 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},

	36 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.MIKI,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE
	},

	37 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT # CLOSE_EYES, FADE_IN, FADE_OUT, DIZZINESS, WOUNDED, BLACOUT
	},

	38 : {
		"type" : Enums.Type.WIN,
		"ending" : 1,
	},

	39 : {
		"type" : Enums.Type.END # Goes to main menu
	}
}
