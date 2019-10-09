extends "res://addons/gut/test.gd"

# https://github.com/godotengine/godot/issues/32676


func test_generate_self_signed_certificate():
	
	var key = null # CryptoKey.new()
	assert_null(key, "There should be no key assigned to test this.")
	
	var cr = Crypto.new()
	var cert = cr.generate_self_signed_certificate(key)
	
	assert_true(true, "No crash, great!")
	