extends Node

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
	OPEN_EYES,
	CLOSE_EYES,
	FADE_IN,
	FADE_OUT,
	DIZZINESS,
	WOUNDED,
	BLACKOUT
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
