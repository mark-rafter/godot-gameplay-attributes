tool
extends GameplayEffect
class_name DamageGameplayEffect

export(String) var attribute_name
export(float) var damage_min = 0
export(float) var damage_max = 0


func apply_effect(attribute: GameplayAttribute) -> void:
	if attribute.name == attribute_name:
		attribute.current_value = clamp(-get_damage(), 0, attribute.max_value)


func get_damage() -> float:
	randomize()
	return (randf() * (damage_max - damage_min)) + damage_min
