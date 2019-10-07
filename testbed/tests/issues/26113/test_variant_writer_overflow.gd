extends "res://addons/gut/test.gd"

# https://github.com/godotengine/godot/pull/26113


func test_variant_writer_overflow_32():
	var a = 2147483648 # 2^31, so out of bounds for 32-bit unsigned int [-2^31,-2^31-1]
	var a_str = var2str(a)
	
	assert_ne(a_str, "-2147483648", "Integer should not wrap around as 32-bit.")
	
	
func test_variant_writer_overflow_64():
	var a = 9223372036854775807 # 2^63-1, upper bound for signed 64-bit int
	
	assert_eq(var2str(a), "9223372036854775807")
	assert_eq(str2var(var2str(a)), 9223372036854775807)
	
	assert_eq(a + 1, -9223372036854775808, "Wraps around.")
	assert_eq(var2str(a + 1), "-9223372036854775808", "Wraps around.")
	assert_eq(str2var(var2str(a + 1)), -9223372036854775808, "Wraps around.")
