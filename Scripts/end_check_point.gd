extends Node2D

@onready var Animator : AnimationPlayer = get_node("AnimationPlayer")

var is_Finished : bool = false

func _process(delta):
	if is_Finished != true:
		return
	else:
		Animator.play("Win")
	
	print(is_Finished)

func _on_collision_shape_2d_tree_entered():
	is_Finished = true
	pass
