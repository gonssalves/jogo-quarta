extends Node3D

func _on_interactable_interacted(interactor: Interactor) -> void:
	queue_free()
