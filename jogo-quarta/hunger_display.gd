extends Node2D

const MAX_HUNGER = 100
var hunger = MAX_HUNGER
var seconds=5

func _ready() -> void:
	set_hunger_label()
	
func set_hunger_label() -> void:
	if hunger == 0:
		$ProgressBar/HungerLabel.text = "MORREU"
		get_tree().paused = true
	else:
		$ProgressBar/HungerLabel.text = "Hunger: %s" % hunger

func _on_timer_timeout():
	if hunger == 0:
		$Timer.stop()
		set_hunger_label()
	if seconds > 0:
		seconds -= 1
	if seconds == 0:
		hunger -= 10
		seconds = 5
		set_hunger_label()


func _on_interactable_interacted(interactor: Interactor) -> void:
	hunger += 10
	set_hunger_label()
