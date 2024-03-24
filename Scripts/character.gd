class_name Character extends Node2D

var character_classes : Array[CharacterClass]
var race : Race

func get_character_level () -> int:
    var level : int = 0
    for character_class in character_classes:
        level += character_class.level
    return level