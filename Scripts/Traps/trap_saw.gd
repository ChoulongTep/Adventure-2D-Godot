extends Node2D

@onready var Player = get_node("/root/World_1/Player")
@onready var Start_Position = get_node("/root/World_1/Checkpoints/Start_CheckPoint")
@onready var Death_UI = get_node("/root/World_1/UIs/Death_UI_Container")

var health : int = 3

func _on_area_2d_area_entered(area):
	if area.is_in_group("Player"):
		if health > 0:			
			# decrease the health by 1
			health -= 1			
			# Hide player
			Player.hide()			
			# Wait for 0.5s
			await get_tree().create_timer(0.5).timeout
			# Show player
			Player.show()
			# Set the player position to the start position
			Player.global_position = Start_Position.global_position
			print(str(health))
		elif health <= 0:
			Death_UI.show()
			Player.queue_free()
