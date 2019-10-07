extends "res://addons/gut/test.gd"

# https://github.com/godotengine/godot/issues/26131

func test_division_modulo_quotient_overflow():
	
	-9223372036854775808 / -1
	-9223372036854775808 % -1

	assert_true(true, "No crash, great!")


# Related: https://github.com/godotengine/godot/pull/26171

func test_wrapi():
	wrapi(0, 0, 0)
	wrapi(-2147483647, 1, 0)
	
	assert_true(true, "No crash, great!")
