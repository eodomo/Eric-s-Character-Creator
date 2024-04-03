class_name Character extends Resource

var name: String
var character_classes: Array = [CharacterClass]
var race : Race 
var ability_scores : Dictionary
var skill_proficiencies: Array = [Stats.Skills]
var known_spells: Array = [Spell]
var max_spell_slots: int
var available_spell_slots : int

func set_default_ability_scores() -> void:
    ability_scores = {
        Stats.AbilityScore.STR: {
            "name": "Strength",
            "base_value": 10,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.DEX: {
            "name": "Strength",
            "base_value": 10,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.CON: {
            "name": "Strength",
            "base_value": 10,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.INT: {
            "name": "Strength",
            "base_value": 10,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.WIS: {
            "name": "Strength",
            "base_value": 10,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        },
        Stats.AbilityScore.CHA: {
            "name": "Strength",
            "base_value": 10,
            "racial_modifiers": 0,
            "ability_improvements": 0,
            "misc_bonus": 0
        }
    }

func _ready() -> void:
    if ability_scores == null:
        set_default_ability_scores()