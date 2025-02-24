extends Control


@onready var sprite: TextureRect = $Sprite
@onready var anim_player: AnimationPlayer = $Animation


@export var username: String

# Dictionary mapping pose states to textures
@export var pose_textures: Dictionary = {
	Enums.Pose.IDLE : preload("res://chars/Hana/idle.png"),
	Enums.Pose.HAPPY : preload("res://chars/Hana/happy.png"),
	Enums.Pose.UPSET : preload("res://chars/Hana/upset.png"),
	Enums.Pose.SMILE : preload("res://chars/Hana/smile.png")
}

var current_pose: int = Enums.Pose.IDLE

func _ready():
	update_pose(current_pose)

# Update the current pose and change the texture accordingly
func update_pose(new_pose: int) -> void:
	current_pose = new_pose
	if pose_textures.has(current_pose):
		# Optionally play an animation before changing texture
		# if anim_player.has_animation("transition"):
			# anim_player.play("transition")
			# You might connect a signal to change texture when transition finishes
			# For simplicity, we'll change the texture immediately:
		sprite.texture = pose_textures[current_pose]
	else:
		push_error("Pose texture not found for state: " + str(new_pose))

func appear():
	if anim_player.has_animation("FADE_IN"):
		anim_player.play("FADE_IN")
	else:
		push_error("No 'FADE_IN' animation available!")
		
func disappear():
	if anim_player.has_animation("FADE_OUT"):
		anim_player.play("FADE_OUT")
	else:
		push_error("No 'FADE_OUT' animation available!")	
		
func zoom_in():
	if anim_player.has_animation("ZOOM_IN"):
		z_index = 2
		anim_player.play("ZOOM_IN")
	else:
		push_error("No 'ZOOM_IN' animation available!")	

func zoom_out():
	if anim_player.has_animation("ZOOM_OUT"):
		anim_player.play("ZOOM_OUT")
	else:
		push_error("No 'ZOOM_OUT' animation available!")	

func talk():
	if anim_player.has_animation("TALK"):
		z_index = 1
		anim_player.play("TALK")
	else:
		push_error("No 'TALK' animation available!")	
		
func silence():
	if anim_player.has_animation("SILENCE"):
		anim_player.play("SILENCE")
	else:
		push_error("No 'SILENCE' animation available!")	


# Functions callable from animations
func remove_self() -> void:
	self.queue_free()

func set_zindex_zero() -> void:
	z_index = 0
