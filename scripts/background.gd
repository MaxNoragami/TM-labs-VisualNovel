extends Control
@export var bg_container: PanelContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func change(texture) -> void:
	bg_container.add_theme_stylebox_override("panel", texture)
	
