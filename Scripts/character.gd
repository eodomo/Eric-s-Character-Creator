class_name Character extends Resource

var name: String
var character_classes: Array = [CharacterClass]
var race : Race 
var ability_scores : Dictionary
var skill_proficiencies: Array = [Stats.Skills]
var known_spells: Array = [Spell]
var max_spell_slots: int
var available_spell_slots : int
