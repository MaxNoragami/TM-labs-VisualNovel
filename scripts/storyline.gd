extends Node

class_name Story

var STORY = {
	0 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.OUTSIDE_HOUSE
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
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The storm arrived just after midnight. Thunder rumbled over Blackwood Manor, a grand estate that had stood for centuries, holding many secrets."
	},
	
	4 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	5 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	6 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.LONG_HALLS
	},
	
	7 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	8 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The long halls, lined with portraits of ancestors, seemed to grow still as the wind howled through the corridors."
	},
	
	9 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Lady Eleanor Blackwood had always found comfort in storms. “They remind us,” she once said, “that nature is stronger than us.”"
	},
	
	10 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "But this specific night, the storm carried more than just wind and rain ..."
	},
	
	11 : {
		"type" : Enums.Type.SFX,
		"song" : Enums.SFX.SCREAM
	},
	
	12 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "A scream—quick and sharp—rang out before silence took over."
	},
	
	13 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "By morning, Lady Eleanor was dead."
	},
	
	14 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	15 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	16 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.OAK_DOOR
	},
	
	17 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	18 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The heavy oak door to Lady Eleanor’s study was slightly open, swaying with the draft. A dim, golden light flickered inside—the last bit of a candle burning down. "
	},
	
	19 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The room smelled of wax, ink, and something sharp and metallic."
	},
	
	20 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	21: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DEAD_BODY
	},
	
	22 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	23 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SMITH,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	
	24 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.SMITH,
		"text" : "gasping “God save us…”"
	},
	
	25 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The elderly housekeeper’s voice trembled as she stepped into the room, her hand clutching a brass candlestick."
	},
	
	26 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "There, slumped over her mahogany desk, was Lady Eleanor. Her silver hair was spilling over the papers beneath her. "
	},
	
	27: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "A pool of blood had seeped into the fine parchment, its ink mixed with blood."
	},
	
	28 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HENRY,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	
	29 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "rushing in, breathless “Mother! Mother, what is—” His voice ."
	},
	
	30: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Mrs. Smith stepped back as Mr. Blackwood dropped to his knees beside his mother’s lifeless form. He reached out a shaking hand but stopped just short of touching her. "
	},
	
	31: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The sight of blood had drained all color from his face."
	},
	
	32 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.SMITH,
		"text" : "whispering “She’s gone, sir…”"
	},
	
	33 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HENRY,
		"action" : Enums.Action.NONE, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	34 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HENRY,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	35 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SMITH,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	36 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	37 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	38: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.LONG_HALLS
	},
	
	39 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	40: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The clock in the hallway struck seven. Outside, the rain had slowed down, 
as if the storm had spent itself on the tragedy that had unfolded within these walls.
"
	},
	
	41 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	42 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	43: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.GLOOMY_MORNING
	},
	
	44 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	45: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The storm had passed, leaving behind a gloomy morning at Blackwood Manor."
	},
	
	46: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The weight of tragedy hung in the air as I, Detective Jonathan Graves, arrived, stepping out of the carriage with quick, measured steps."
	},
	
	47: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The manor stood still, as if mourning the loss of its mistress."
	},
	48 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SINCLAIR,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	49 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.SINCLAIR,
		"text" : "“Detective Graves, we’ve been expecting you.”"
	},
	50 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Then let’s not waste time. Show me the body.”"
	},
	51 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SINCLAIR,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	52 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	53 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	54: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DEAD_BODY
	},
	
	55 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	56: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Mr. Sinclair led me to Lady Eleanor's study. The heavy oak door creaked as it opened to reveal the grim scene within."
	},
	
	57: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Lady Eleanor was slumped over her desk."
	},
	58: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Standing by the desk was Mrs. Smith, the housekeeper, clutching a brass candlestick. Her voice shook as she looked at the lifeless Lady Eleanor."
	},
	59 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SMITH,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	60 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.SMITH,
		"text" : "“She’s gone, sir...”"
	},
	61 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SMITH,
		"action" : Enums.Action.NONE, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	62 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.SMITH,
		"text" : "“Gone forever...”"
	},
	63 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“No signs of a struggle.”"
	},
	64 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“The position of her body—this wasn’t a suicide...”"
	},
	65 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“It’s murder.”"
	},
	66: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I approached the desk, my eyes scanning every detail. There was no doubt in my mind."
	},
	67: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "This was a carefully orchestrated crime, and the killer was still inside Blackwood Manor."
	},
	68 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "to Mrs. Smith, calmly “Tell me how you found her.”"
	},
	69 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SMITH,
		"action" : Enums.Action.NONE, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	70 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.SMITH,
		"text" : "“I...”"
	},
	71 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.SMITH,
		"text" : "“I was bringing her tea, as I always do. When I opened the door, I found her like this. I called for Mr. Blackwood immediately.”"
	},
	72 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“I need to be alone to Investigate”"
	},
	73 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.SMITH,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	74 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	75 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Inspect Crime Scene", "next" : 76},
			{"option" : "Question Witnesses", "next" : 273}
		]
	},
	
	76 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	77: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DESK_VIEW
	},
	
	78 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	79: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I was in the study of Blackwood Manor, the heavy scent of gunpowder still hanging in the air."
	},
	80: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "My eyes focused on the gunshot wound in her chest—direct, clean. A revolver was discarded a few feet away, its silvery barrel gleaming in the dim light. "
	},
	
	81: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The desk was in disarray, papers scattered carelessly, and the remnants of a letter were still burning in the fireplace. "
	},
	
	82: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "There was also something clutched tightly in Lady Eleanor’s cold hand—a locket."
	},
	83 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“This isn’t a random act of violence.”"
	},
	
	84 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The gunshot wound, the burnt letter, and the locket—everything points to something far more intricate. There’s more to this story, and the clues are all here waiting to be uncovered."
	},
	
	85 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	86 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Locket and Letter", "next" : 87},
			{"option" : "Inspect Weapon Evidence", "next" : 116},
			{"option" : "Leave to Question Witnesses", "next" : 273}
		]
	},
	
	87 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	88: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DESK_VIEW
	},
	
	89 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	90 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I was kneeling beside Lady Eleanor’s body, carefully opened the locket. "
	},
	
	91 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Inside was a photograph of a young woman, perhaps in her twenties, with soft features and a gaze full of mystery."
	},
	
	92 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I traced the engraved inscription beneath the photo, which read:"
	},
	93 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“To my beloved daughter.”"
	},
	
	94 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	95 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	96 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.PHOTO # Photograph view
	},
	
	97 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	98 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "My brow furrowed..."
	},
	99 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Beloved daughter?”"
	},
	
	100 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "..."
	},
	101 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : " Lady Eleanor, the woman who had been known for her cold, calculating demeanor, had a daughter? "
	},
	102 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The photograph was unfamiliar, and the name—Beatrice Holloway—stirred something in my memory. There was something unsettling about it."
	},
	103 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“It’s Lord Henry’s fiancée...”"
	},
	104 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	105 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	106 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.FIREPLACE # Photograph view
	},
	
	107 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	108 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Next, I turned to the charred remnants of a letter in the fireplace."
	},
	109 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Its edges were blackened from the flames, but the I carefully retrieved it, the remaining words barely visible."
	},
	110 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "They were faded but discernible: “My dear Eleanor, I am writing to tell you of your secret child. Beatrice Holloway...”"
	},
	111 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The rest of the letter was unreadable, but the name definitely stood out."
	},
	112 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Lady Eleanor had been a woman of secrets. Had Beatrice been the one to end her life, in some twisted outburst over this hidden past?”"
	},
	113 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Or had someone else discovered this secret—perhaps even before Beatrice?”"
	},
	114 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	115 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Confront Beatrice with the Locket & Letter", "next" : 243},
			{"option" : "Question Witnesses", "next" : 273},
		]
	},
	116 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	117 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DESK_VIEW # Photograph view
	},
	
	118 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	119 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I crouched beside Lady Eleanor’s body and began the meticulous inspection, my fingers brushing over her clothes. No gunpowder residue..."
	},
	
	120 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“If she had fired the weapon herself, there would have been powder marks.”"
	},
	
	121 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I turned my attention to Beatrice, Lord Henry’s fiancée, standing stiffly near the entrance. Her eyes darted nervously from the body to me."
	},
	
	122 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	123 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I caught sight of the faint powder stains on her dress, barely noticeable unless one was paying close attention."
	},
	124 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "“Beatrice… ”"
	},
	
	125 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "“She’s involved. The question is… how?”"
	},
	
	126 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	127 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	128 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	129: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DEAD_BODY # Eleonor on table?
	},
	
	130 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	131 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I stood up slowly and approached the wall, tracing my fingers around the two bullet holes. "
	},
	
	132 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The one in the wall was high, suggesting it had been fired from an elevated position. "
	},
	133 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The one in Lady Eleanor’s chest, however, was a direct hit."
	},
	134 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“The trajectory isn’t random.”"
	},
	135 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I look back at Beatrice as she left somewhere, my suspicion growing. "
	},
	136 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	137 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	138 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Why was there only one shot that hit Lady Eleanor, but another lodged in the wall? "
	},
	139 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The bullet had to have been fired earlier—perhaps as a warning or a signal. "
	},
	140 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Someone knew exactly what they were doing.“”"
	},
	141 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I turned my attention to the bookshelf behind Lady Eleanor’s desk. The slight misalignment of the shelves caught my trained eye. "
	},
	142 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	143 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	144: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.BOOKSHELF # Eleonor on table?
	},
	
	145 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	146 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Without hesitation, I approached the bookshelf and pressed on a panel, watching as the hidden passageway creaked open."
	},
	147 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	148 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	149: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DARK_HALL 
	},
	
	150 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	151 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I pulse quickened. Then, I stepped inside the passage, noticing the bloodstains that marred the floor. The narrow corridor stretched into darkness..."
	},
	152 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "My eyes narrowed as my mind raced. Bloodied footprints led the way deeper into the passage. It led straight to Beatrice’s room."
	},
	153 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She had the means, the motive, and now the opportunity."
	},
	154 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“But why? What was she hiding?”"
	},
	155 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The hidden passage, the gunpowder on her dress, and the bloodstains were enough to tie her to the crime, but something still nagged me."
	},
	156 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "There was a deeper story to be uncovered here."
	},
	157 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	158 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Accuse Beatrice Based on Hidden Passage", "next" : 391},
			{"option" : "Ignore Passage and Accuse Someone else", "next" : 159},
			{"option" : "Continue Investigating", "next" : 160} # Path 4
		]
	},
	
	159 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Accuse Lord Henry", "next" : 412},
			{"option" : "Accuse Colonel Hastings, family friend", "next" : 412},
			{"option" : "Accuse Dr. Whitmore, the doctor", "next" : 412},
			{"option" : "Accuse Alice, the maid", "next" : 412},
			{"option" : "Accuse Mrs. Smith, housekeeper", "next" : 412},
			{"option" : "Accuse Mr.Sinclaire, butler", "next" : 412}
		]
	},
	160 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	161: {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DARK_HALL 
	},
	
	162 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	
	163 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The storm outside had calmed, but inside Blackwood Manor, tension was building."
	},
	
	164 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The dim glow of chandeliers cast long shadows as Detective Graves gathered the household’s key figures into the Grand Hall."
	},
	
	165 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HENRY,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	166 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.WHITMORE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	167 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.COLONEL,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	168 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.ALICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	169 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	170 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The guests sat stiffly, exchanging glances."
	},
	171 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Some were nervous."
	},
	172 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Some were impatient. And some were hiding something."
	},
	173 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Some were impatient. And some were hiding something."
	},
	174 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“We all know why we are here. Lady Eleanor Blackwood was murdered tonight. And someone in this very room is responsible.”"
	},
	175 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The weight of my words pressed against the room like a heavy fog."
	},
	176 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "No one moved."
	},
	177 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "No one spoke."
	},
	178 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“So let’s start from the beginning.”"
	},
	179 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Mr. Blackwood, let’s start with you. Where were you at the time of the murder?”"
	},
	180 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "“In my chambers. Alone.”"
	},
	181 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Convenient. I heard you and your mother argued earlier.”"
	},
	182 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "“We had a disagreement. About the will. She… wanted to change it.”"
	},
	183 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“In favor of whom?”"
	},
	184 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Henry hesitates. His jaw tightens."
	},
	185 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "“I don’t know.”"
	},
	186 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	187 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Press him further about the will.", "next" : 188},
			{"option" : "Move on to the next witness.", "next" : 190},
		]
	},
	188 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "“Fine. I was outside her study earlier. I overheard voices, but I won’t say whose.”"
	},
	189 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Henry was outside the study room. Keeps secrets."
	},
	190 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I turn to the retired military officer, Colonel Hastings, who sits stiffly, his hands resting on his cane."
	},
	191 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Colonel, you’ve been friends with Lady Eleanor for a long time.”"
	},
	192 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Did she seem... troubled?”"
	},
	193 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.COLONEL,
		"text" : "“She was worried. Tense. But she wouldn’t tell me why.”"
	},
	194 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You were here last night. Did you hear anything?”"
	},
	195 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.COLONEL,
		"text" : "“No.”"
	},
	196 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“...”"
	},
	197 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Not even a gunshot?”"
	},
	198 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“...”"
	},
	199 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.COLONEL,
		"text" : "“I... did see Beatrice leave Eleanor’s study that night. But that doesn’t mean anything.”"
	},
	200 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	201 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Press him on why he kept this to himself.", "next" : 202},
			{"option" : "Move on to the next witness.", "next" : 204},
		]
	},
	202 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.COLONEL,
		"text" : "“I didn’t think it was relevant. Maybe I was wrong.”"
	},
	203 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Beatrice was seen leaving the study after the murder."
	},
	204 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I shift my attention to Dr. Whitmore, a reserved man who adjusts his glasses nervously."
	},
	205 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Doctor, you were tending to Lady Eleanor before her death. Tell me about her condition.”"
	},
	206 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.WHITMORE,
		"text" : "“She was ill. But not from age. I believe… she was being poisoned.”"
	},
	207 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "A murmur spreads through the room. Henry shoots an alarmed glance at Beatrice, who remains silent."
	},
	208 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Poisoned? Do you have proof?”"
	},
	209 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.WHITMORE,
		"text" : "“Not definitive. But she was growing weaker by the day. She refused my help.”"
	},
	210 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	211 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Ask him who might have poisoned her.", "next" : 212},
			{"option" : "Move on to the next witness.", "next" : 214},
		]
	},
	212 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.WHITMORE,
		"text" : "“She once told me… she suspected someone close to her. But she wouldn’t say who.”"
	},
	213 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Lady Eleanor knew she was being poisoned by someone close, but kept silent."
	},
	214 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The young maid, Alice, wrings her hands, clearly anxious."
	},
	215 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Alice, you were in the kitchen when the shot was fired. Did you see anything?”"
	},
	216 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“Yes, sir! I... I heard the shot, and I ran toward the study, but… I was scared.”"
	},
	217 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Scared of what?”"
	},
	218 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Alice hesitates. Her eyes dart to Beatrice."
	},
	219 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“I saw Miss Beatrice leave the study right after the gunshot.”"
	},
	220 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	221 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Ask Alice why she didn’t say this earlier.", "next" : 222},
			{"option" : "Directly confront Beatrice.", "next" : 224},
		]
	},
	222 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“I... I was afraid! I don’t want to cause trouble!”"
	},
	223 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Alice saw Beatrice leaving the study after the gunshot."
	},
	224 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "All eyes turn to Beatrice. She stands by the fireplace, arms crossed."
	},
	225 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Beatrice, you were seen leaving Lady Eleanor’s study after the gunshot. Do you deny it?”"
	},
	226 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Beatrice’s face remains unreadable."
	},
	227 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“I do. Alice must be mistaken.”"
	},
	228 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You were also engaged to Henry. A marriage that would have been impossible if the truth about your parentage came out.”"
	},
	229 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Her jaw tightens."
	},
	230 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	231 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Press Beatrice further with the locket evidence.", "next" : 232},
			{"option" : "Give her a chance to explain herself.", "next" : 235},
		]
	},
	232 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“You think I killed her? She was my mother! I hated her, but… I didn’t kill her.”"
	},
	233 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Her voice shakes, but is it fear or guilt?"
	},
	234 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Beatrice may have had a strong motive, but does she have an alibi?"
	},
	235 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "All eyes turn to Beatrice. She stands by the fireplace, arms crossed."
	},
	
	236 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	
	237 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HENRY,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	238 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.WHITMORE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	239 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.COLONEL,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	240 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.ALICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	241 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	242 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Accuse Beatrice Based on Alice’s Testimony", "next" : 335},
			{"option" : "Accuse Henry or Colonel Hastings Based on Their Alibis", "next" : 412},
		]
	},
	243 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	244 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DEAD_BODY # Photograph view
	},
	
	245 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	246 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The study was silent except for the faint crackling of the fire, its orange glow casting long shadows across the room. I stood facing Beatrice, who stood by the window, her eyes downcast."
	},
	247 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	248 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I had uncovered the truth. Now, I had to bring it to light."
	},
	249 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I held the locket out in front of her."
	},
	250 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Beatrice... This locket belonged to your mother, Lady Eleanor. It’s clear from the inscription that she had a secret—a daughter. And you, it seems, were that daughter.”"
	},
	251 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Beatrice’s shoulders tensed, her breath catching. She slowly turned towards me, her face pale as a ghost."
	},
	252 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.NONE, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	253 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Her lips trembled, and for a moment, she was silent, staring at the locket in his hand. The truth was unraveling before her eyes, and she knew it was too late to deny it."
	},
	254 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“How long were you planning to keep this hidden?”"
	},
	255 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“I didn’t want this. I didn’t want any of it.”"
	},
	256 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Her eyes lifted to meet mine, filled with a storm of emotions—anger, fear, guilt—but most of all, sorrow. "
	},
	257 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“I didn’t choose to be born into this family. Lady Eleanor was never a mother to me. She abandoned me... I had to fight for everything, and she never even cared.”"
	},
	258 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I felt a pang of sympathy but pushed it aside. My job was to find the truth, not to pity her. "
	},
	259 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“So you killed her? Was that your answer to all your pain?”"
	},
	260 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“Yes. I... I didn’t mean to. It was an argument—she told me I wasn’t her daughter anymore. That I was just a mistake. And in that moment, everything... everything just snapped. I grabbed the gun, and I shot her.”"
	},
	261 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Beatrice, here are consequences for murder. You can’t undo this.”"
	},
	262 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Her eyes filled with tears, but she held my gaze. "
	},
	263 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.ZOOM_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	264 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“I know. But I couldn't live with her constantly reminding me of how worthless I was.”"
	},
	265 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.ZOOM_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	266 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I stared at her for a long moment, weighing my options"
	},
	267 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I could arrest her now, take her into custody, and end the investigation."
	},
	268 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The case would be closed, with a confession that sealed Beatrice’s fate. "
	},
	269 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "But there was a part of me that hesitated, the image of her standing there, broken and remorseful. "
	},
	270 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	271 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	272 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Accuse Beatrice of Murder", "next" : 335},
			{"option" : "Hide the Secret and Protect Beatrice", "next" : 360},
		]
	},
	273 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	274 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.LONG_HALLS # Photograph view
	},
	
	275 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	276 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I stood before the gathered household members, my eyes scanning the room like a hawk searching for the slightest crack in their composure."
	},
	277 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HENRY,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	278 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.WHITMORE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	279 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.COLONEL,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	280: {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.ALICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	281 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	282 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The fireplace crackled softly, casting flickering shadows across the mahogany walls."
	},
	283 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The air was heavy, filled with unspoken accusations."
	},
	284: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The storm outside had settled, but inside the manor, the storm was just beginning."
	},
	285 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“We’re going to do this the simple way. I ask questions. You answer honestly. If I find out anyone is lying to me—well, let’s just say I’m good at uncovering secrets.”"
	},
	286: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "A tense silence. No one moved."
	},
	287: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "My gaze landed first on the closest relative of the victim — Henry Blackwood."
	},
	288 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Henry, let’s start with you. Your mother was murdered tonight. Where were you at the time of her death?”"
	},
	289 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "“In my chambers, Detective. Alone.”"
	},
	290 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You were seen arguing with her earlier. Something about the will, wasn’t it?”"
	},
	291 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "“Yes, we argued. She wanted to change her will. Said she had… other considerations. I strongly disagreed”"
	},
	292 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Other considerations? You mean she was planning to cut you out?”"
	},
	293 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	294 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Press him further about the will.", "next" : 295},
			{"option" : "Move on to the next witness.", "next" : 297},
		]
	},
	295 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.HENRY,
		"text" : "“I was outside her study earlier. I overheard voices... but I won’t say whose.”"
	},
	296 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Henry heard someone inside the study before the murder."
	},
	297 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The maid fidgets under my gaze, her fingers nervously twisting the hem of her apron."
	},
	298 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Alice, where were you when the shot was fired?”"
	},
	299 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“I was in the kitchen and heard the gunshot.”"
	},
	300 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Alice. You said you were in the kitchen when the shot was fired. What did you see?”"
	},
	301 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“I heard the gunshot, sir. And then… I saw Miss Beatrice leave the study. I swear it!”"
	},
	302 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "A hushed tension grips the room. Beatrice stares at Alice, her face unreadable."
	},
	303 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Why didn’t you say this earlier?”"
	},
	304 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.ALICE,
		"text" : "“I… I was scared. What if I was wrong? I didn’t want to accuse her of something she didn’t do”"
	},
	305 : {
		"type" : Enums.Type.CLUE,
		"clue" : " Alice is afraid—but of whom?"
	},
	306 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Miss Holloway. Where were you when the gunshot was fired?”"
	},
	307 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“In the library. Reading.. ”"
	},
	308 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“And yet, we have a witness who claims to have seen you leaving the study after the shot.”"
	},
	309 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“That’s not true. I never went near the study.”"
	},
	
	310 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“Alice is mistaken. I swear it. I wouldn’t… I didn’t do this.”"
	},
	311 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Beatrice denies being in the study, contradicting Alice’s testimony."
	},
	312 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The retired colonel watches the interrogation with a sharp gaze, his hands folded neatly on his lap."
	},
	313 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Colonel, you were close to Lady Eleanor. Did she seem worried before she died?”"
	},
	314 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.COLONEL,
		"text" : "“Yes. She wouldn’t say why, but something troubled her deeply.”"
	},
	315 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Colonel, you were close to Lady Eleanor. Did she seem worried before she died?”"
	},
	316: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "A pause. Hastings taps his fingers on the arm of his chair."
	},
	317 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.COLONEL,
		"text" : "“I saw Beatrice leave the study. But that doesn't mean she did anything.”"
	},
	
	318: {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.COLONEL,
		"text" : "“I thought it was nothing. But perhaps I was wrong.”"
	},
	319 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Two witnesses saw Beatrice near the study, but she denies it."
	},
	320: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The doctor adjusts his glasses nervously as I turn to him."
	},
	321 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Dr. Whitmore. You were treating Lady Eleanor before her death. Any medical concerns?”"
	},
	322 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.WHITMORE,
		"text" : "“She was… weak. Unnaturally so. I believe she was being poisoned”"
	},
	323: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "TGasps ripple through the room. Even Beatrice looks startled."
	},
	324 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Poisoned? By whom?”"
	},
	325 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.WHITMORE,
		"text" : "“She never told me. But she suspected someone.”"
	},
	326 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.WHITMORE,
		"text" : "“No hard proof. But I know what I saw.”"
	},
	327 : {
		"type" : Enums.Type.CLUE,
		"clue" : "Lady Eleanor suspected someone was poisoning her."
	},

	328 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.HENRY,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	329 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.WHITMORE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	330 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.COLONEL,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	
	331: {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.ALICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	332 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	333 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	334 : {
		"type" : Enums.Type.CHOICE,
		"choices" : [
			{"option" : "Accuse Beatrice Based on Witness Testimony", "next" : 335},
			{"option" : "Accuse Henry or Colonel Hastings Based on Their Alibis", "next" : 412},
			{"option" : "Continue Investigating (Search for More Clues)", "next" : 160}
		]
	},
	335 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	336 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.LONG_HALLS # Photograph view
	},
	
	337 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	338: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Her confession was as painful as it was inevitable. The truth had been laid bare, and now it was time to face the consequences."
	},
	339 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	340 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Your confession is enough, Beatrice. You took a life, and now you will answer for it.”"
	},
	341: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Her eyes filled with tears, but there was no turning back. I took a long breath, the weight of the decision pressing down on me, but the solution was clear. "
	},
	342: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The law was the law. "
	},
	343: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I stepped toward the door, signaling for the guards to take her into custody. My voice was steady, unwavering."
	},
	344 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You will be arrested. The trial will take place, and the truth will be known to everyone. There will be no more hiding.”"
	},
	345 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	346: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "As Beatrice was escorted from the room, her eyes cast downward, her once-confident demeanor shattered. I remained where I stood, the locket still clenched in my hand. "
	},
	347: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "This was my victory, but it tasted bitter. The Blackwood family name would forever be tainted by her actions, no matter how much justice I’d served. "
	},
	348: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She was sentenced to life in prison, a somber end to a once-promising life."
	},
	349 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	350 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	351 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.GLOOMY_MORNING # Photograph view
	},
	
	352 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	353: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She was sentenced to life in prison, a somber end to a once-promising life. Months passed, and I became a sought-after figure in the criminal justice world."
	},
	354: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I also knew one thing: my reputation was solidified. No matter what happened from here on out, I had done what was right. "
	},
	355: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "For me, the journey was far from over. But at least, for now, justice had been served."
	},
	356 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	357 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},

	358 : {
		"type" : Enums.Type.WIN,
		"ending" : "Ending 1: Justice is Served",
	},
	

	359 : {
		"type" : Enums.Type.END # Goes to main menu
	},
	
	360 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	361 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DEAD_BODY # Photograph view
	},
	
	362 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	363: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "My gaze hardened, my hands clenched into fists at my sides. "
	},
	364 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	365: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Beatrice was guilty, but was it worth destroying her life, the Blackwood family’s legacy, for the sake of justice? "
	},
	366 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Beatrice, you’ve done something unforgivable. But if I tell the world the truth, if I let this scandal break—”"
	},
	367 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“Please… I can’t lose everything. I can’t. I’ll do anything, anything to make it right.”"
	},
	368: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "My heart raced as I weighed the options before me. The truth would bring ruin, but a lie could preserve the family's name, keep the Blackwood legacy intact. "
	},
	369: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "It wasn’t just about justice anymore—it was about survival. I had to make a choice."
	},
	
	370: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Is it better to protect them all, to keep the family safe from ruin?"
	},
	371: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She’s guilty... but does the world really need to know?"
	},
	372: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I let out a long, measured breath and met Beatrice’s gaze once more. My voice was steady, cold."
	},
	373 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“I’ll cover it up. But this… this is the last chance you’ll get. The truth stays buried, Beatrice, and you owe me for that.”"
	},
	374 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.NONE, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.HAPPY,
	},
	375 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“Thank you... thank you so much. I swear I’ll never let this happen again.”"
	},
	376: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Beatrice’s voice cracked with a mixture of relief and gratitude. She bowed her head, her hands shaking as if trying to hold herself together. My heart twisted as I realized what I had just done. "
	},
	377: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I had betrayed the very principles I’d sworn to uphold. But it was done. The truth would never see the light of day. "
	},
	378: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "What have I done? I’ve just condemned them all to live with this lie. And Beatrice… will she really change, or will she strike again? "
	},
	379 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	380 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.HAPPY,
	},
	
	381 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	382 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DARK_HALL # Photograph view
	},
	
	383 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	384: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I left the study, my mind numb with the weight of my decision. The authorities would be fed a story of an accidental death—a tragic fall, a mistake in the dark. There would be no trial, no scandal, no further investigation. The Blackwood family would remain untainted, and Beatrice would go free. "
	},
	385: {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "But as I walked down the empty hallways, a dark thought gnawed at me. Beatrice had been given a second chance. But could she truly change? "
	},
	386 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“I’ve saved the family. But what have I really done?”"
	},
	387 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	388 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},

	389 : {
		"type" : Enums.Type.WIN,
		"ending" : "Ending 2: Hid the Secret & Protected Beatrice",
	},
	

	390 : {
		"type" : Enums.Type.END # Goes to main menu
	},
	391 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	392 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.DEAD_BODY # Photograph view
	},
	
	393 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	394 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I stood in front of Beatrice. "
	},
	395 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	396 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“The evidence is clear. You killed Lady Eleanor to protect your future and your place in this family.”"
	},
	397 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Beatrice shook her head furiously, her voice trembling with anger and fear. "
	},
	398 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“No, no! I didn’t do it! I would never hurt her! You’ve got it all wrong!”"
	},
	
	399 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Despite her protests and claims of innocence, the evidence was irrefutable. Her gunpowder-stained dress, the secret passage, and the bloodstains led directly to her. The truth left her no room for denial."
	},
	400 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“I swear, I didn’t do it! You’re making a mistake! You can’t do this to me!”"
	},
	401 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“The truth has a way of coming to light, Beatrice. You can deny it all you want, but the facts are clear.”"
	},
	
	402 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You killed her.”"
	},
	403 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Beatrice was arrested, and despite her insistent denials, she was brought to trial. Her attempts to deny the evidence fell flat, and she was convicted of murder."
	},
	
	404 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She was sentenced to life imprisonment, her once-promising future forever altered by her actions."
	},
	405 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "As she was led away in handcuffs, her face twisted with disbelief and rage, still insisting on her innocence, I couldn't help but feel the weight of the situation."
	},
	406 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	407 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She may deny it, but the truth is there. I did my job, but justice has a price. The Blackwoods will never be the same."
	},
	408 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	409 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},

	410 : {
		"type" : Enums.Type.WIN,
		"ending" : "Ending 3: The Secret Betrayal",
	},
	

	411 : {
		"type" : Enums.Type.END # Goes to main menu
	},
	412 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_IN
	},
	
	413 : {
		"type" : Enums.Type.SET_SCENE,
		"background" : Enums.Background.LONG_HALLS # Photograph view
	},
	
	414 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},
	415 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "I walk through the now-quiet halls of Blackwood Manor, their mind clouded by the mistake that haunts them. The wrong person has been convicted and they died in prison, and the truth is still hidden in the shadows."
	},
	416 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Beatrice remains free, her guilt still a well-guarded secret. "
	},
	417 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The heavy sound of footsteps echoes in the silence. The detective turns around, a sudden chill running down his spine as Beatrice steps out from the darkened hallway.  "
	},
	
	418 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.IDLE,
	},
	419 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You’ve been watching me, haven’t you?”"
	},
	420 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“All this time, you knew I was getting closer to the truth. But you kept your distance, letting me make that mistake.”"
	},
	421 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“You were always close. But not close enough, detective. You’ve failed. The wrong person is dead, and the rest of this... it's your fault. It’s always been your fault.”"
	},
	422 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She steps closer, her movements slow and deliberate. There’s a quiet confidence in her now, as if she’s been waiting for this moment. "
	},
	423 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You think you’ve won? You think... this ends with me?”"
	},
	424 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.ZOOM_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	425 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“I don’t think so. I know it. You never really stood a chance.”"
	},
	426 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.ZOOM_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	427 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "She reaches into her coat and pulls out a small, glistening object—a knife, its blade reflecting the light. "
	},
	428 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Global.username,
		"text" : "“You don’t have to do this. You’ve already gotten away with murder. You can still walk away.”"
	},
	429 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“I’ve already walked away. Now, you get to pay for all your mistakes.”"
	},
	430 : {
		"type" : Enums.Type.DIALOGUE,
		"speaker" : Enums.Characters.BEATRICE,
		"text" : "“Goodbye, detective.”"
	},
	431 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.ZOOM_IN, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	432 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "Before I could react, Beatrice lunges forward with swift, practiced precision. My body goes rigid as the knife plunges into their side, a gasp of air escaping my lips. The pain is sharp, immediate. The detective stumbles back, a choking sound rising in his throat as he falls to his knees."
	},
	433 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.ZOOM_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	434 : {
		"type" : Enums.Type.CHARACTER,
		"who" : Enums.Characters.BEATRICE,
		"action" : Enums.Action.FADE_OUT, # FADE_OUT, ZOOM_IN, ZOOM_OUT
		"pose" : Enums.Pose.UPSET,
	},
	435 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "In the silence that follows, Beatrice steps over the my body, her gaze lingering for a moment. There is no remorse, no hesitation. Just the finality of it all."
	},
	
	436 : {
		"type" : Enums.Type.INNER_DIALOGUE,
		"speaker" : "Author",
		"text" : "The Blackwood family, the detective’s failure, and the endless cycle of bloodshed will be hers to control now. No more interference. No more questions."
	},
	437 : {
		"type" : Enums.Type.CLOSE_DIALOGUE
	},
	438 : {
		"type" : Enums.Type.VISION_EFFECT,
		"effect" : Enums.Vision.FADE_OUT
	},

	439 : {
		"type" : Enums.Type.WIN,
		"ending" : "Ending 4: Wrong Accusation",
	},
	

	440 : {
		"type" : Enums.Type.END # Goes to main menu
	},
	
}
