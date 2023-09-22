extends Node2D

@onready var Animator = get_node("AnimationPlayer")

@onready var Win_UI = get_node("/root/World_1/UIs/Win_UI_Container")

func _on_area_2d_area_entered(area):
	if area.is_in_group("Player"):
		Animator.play("Win")
		# Wait for 0.5s
		await get_tree().create_timer(0.5).timeout
		Win_UI.show()
		
