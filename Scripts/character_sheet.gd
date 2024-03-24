class_name CharacterSheet extends Node2D

@onready var character_name_label: Label = %CharacterNameLabel
@onready var character_level_label: Label = %CharacterLevelLabel
@onready var experience_label : Label = %ExperienceLabel
@onready var race_label : Label = %RaceLabel

func set_character_name(character_name : String) -> void:
	character_name_label.text = character_name
	
func set_character_level(character_level : int) -> void:
	character_level_label.text = "Character Level: " + str(character_level)
	
func set_experience(experience : int) -> void:
	experience_label.text = "Experience: " + str(experience)

func set_race(race : Race) -> void:
	race_label.text = race.name
