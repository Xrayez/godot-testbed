extends "res://addons/gut/test.gd"

# https://github.com/godotengine/godot/issues/32716


func test_pool_byte_array_decompress():
	
	var array = PoolByteArray([])
	array.decompress(0)

	assert_true(true, "No crash, great!")
