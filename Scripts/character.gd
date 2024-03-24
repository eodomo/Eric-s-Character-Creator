class_name Character extends Node2D

signal class_changed
signal race_changed

var character_classes: Array = [CharacterClass]:
    set(value):
        character_classes = value
        emit_signal("class_changed")
var race : Race :
    set(value):
        race = value
        emit_signal("race_changed")

func get_character_level () -> int:
    var level : int = 0
    for character_class: CharacterClass in character_classes:
        level += character_class.level
    return level