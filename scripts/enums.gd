extends Node

class_name MyEnums

enum Type {
	SET_SCENE,
	PLAY_SONG,
	VISION_EFFECT,
	DIALOGUE,
	CHARACTER,
	INNER_DIALOGUE,
	CHOICE,
	AUTOPLAY,
	TIMER,
	DEATH,
	END,
	WIN,
	CLOSE_DIALOGUE
}

enum Vision {
	FADE_IN,
	FADE_OUT,
}

enum Action {
	NONE,
	FADE_IN,
	FADE_OUT,
	ZOOM_IN,
	ZOOM_OUT
}

enum Pose
{
	IDLE,
	HAPPY,
	UPSET,
	SMILE
}

enum Characters
{
	HANA,
	MIKI
}

enum Background
{
	NOON,
	NIGHT
}

enum Audio
{
	MENU,
	GAMEPLAY,
	NONE
}
