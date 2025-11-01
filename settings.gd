extends Node

# Create new ConfigFile object.
var config = ConfigFile.new()

func _on_tree_entered() -> void:
	#print(OS.get_user_data_dir())
	config.set_value("Settings", "Fullscreen", false)
	config.set_value("Settings", "Resolution", "Desktop")
	config.save("user://settings.cfg")


func _on_tree_exited() -> void:
	config.set_value("Settings", "Fullscreen", $Panel/TabContainer/Settings/MarginContainer/VFlowContainer/Fullscreen.toggle_mode)
	config.set_value("Settings", "Resolution", $Panel/TabContainer/Settings/MarginContainer/VFlowContainer/OptionButton.text)
	config.save("user://settings.cfg")
