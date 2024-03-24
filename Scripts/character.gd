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