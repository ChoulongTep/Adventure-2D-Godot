extends Control


func _on_main_menu_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu_scene.tscn")

func _on_restart_btn_pressed():
	get_tree().reload_current_scene()
