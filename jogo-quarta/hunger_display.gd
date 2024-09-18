extends Node2D

const MAX_HUNGER = 10
var hunger = MAX_HUNGER
var seconds=10

func _ready() -> void:
	set_hunger_label()
	
func set_hunger_label() -> void:
	$ProgressBar/HungerLabel.text = "Hunger: %s" % hunger

func _on_timer_timeout():
	print(seconds)
	print(hunger)
	if hunger == 0:
		print("MORTO")
		$Timer.stop()
	if seconds > 0:
		seconds -= 1
	if seconds == 0:
		hunger -= 10
		seconds = 10
		set_hunger_label()
