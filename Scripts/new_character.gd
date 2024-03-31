extends Control


func _on_back_button_pressed() -> void:
    var main_menu_scene: PackedScene = load("res://Scenes/main_menu.tscn")
    get_tree().change_scene_to_packed(main_menu_scene)