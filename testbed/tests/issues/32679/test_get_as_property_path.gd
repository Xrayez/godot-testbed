extends "res://addons/gut/test.gd"

# https://github.com/godotengine/godot/issues/32679


func test_get_as_property_path():
	
	var path = NodePath()
	path = path.get_as_property_path()

	assert_true(true, "No crash, great!")
