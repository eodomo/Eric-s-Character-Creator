extends Control

@onready var load_panel: Window = $LoadCharacterWindow
@onready var load_character_button: Button = %LoadCharacterButton

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func _on_load_character_button_pressed() -> void:
	set_load_character_window_size()
	load_panel.popup()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		load_panel.hide()

func set_load_character_window_size() -> void:
	var largest_button_size: int = 0
	for button: Control in load_panel.get_node("LoadCharacterScrollContainer/VBoxContainer").get_children():
		largest_button_size = max(largest_button_size, button.size.x)
	load_panel.size.x = largest_button_size + 10
	
func list_characters_directory() -> PackedStringArray:
	var character_list: PackedStringArray = PackedStringArray([])
	var dir: DirAccess = DirAccess.open("user://characters")
	if dir:
		character_list = dir.get_files()
	return character_list

func _ready() -> void:
	var character_list: PackedStringArray = list_characters_directory()
	if character_list.size() == 0:
		load_character_button.set_disabled(true)
	else: 
		for character in character_list:
			var button: Button = Button.new()
			button.text = character
			load_panel.get_node("LoadCharacterScrollContainer/VBoxContainer").add_child(button)

func _on_new_character_button_pressed() -> void:
	var new_character_scene: PackedScene = load("res://Scenes/new_character.tscn")
	get_tree().change_scene_to_packed(new_character_scene)