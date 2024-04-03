extends Control

var character: Character

func _ready() -> void:
    character = Character.new()
    set_default_ability_scores()

func _on_back_button_pressed() -> void:
    var main_menu_scene: PackedScene = load("res://Scenes/main_menu.tscn")
    get_tree().change_scene_to_packed(main_menu_scene)

func set_default_ability_scores() -> void:
    character.ability_scores = {
        Stats.AbilityScore.STR: {
            "name": "Strength",
            "base_value": 9,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.DEX: {
            "name": "Dexterity",
            "base_value": 9,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.CON: {
            "name": "Constitution",
            "base_value": 9,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.INT: {
            "name": "Intelligence",
            "base_value": 9,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.WIS: {
            "name": "Wisdom",
            "base_value": 9,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.CHA: {
            "name": "Charisma",
            "base_value": 9,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        }
    }
    