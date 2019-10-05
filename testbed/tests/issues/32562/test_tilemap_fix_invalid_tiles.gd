extends "res://addons/gut/test.gd"

class TileMapFixInvalidTilesCrash extends TileMap:

	# https://github.com/godotengine/godot/issues/32562

	func _process(delta):
		fix_invalid_tiles()
		set_cell(0,0,0)
		fix_invalid_tiles()
		set_cell(0,0,0)
		clear()
		
var map

func setup():
	map = TileMapFixInvalidTilesCrash.new()
	add_child(map)
	
	
func test_fix_invalid_tiles():
	yield(get_tree(), 'idle_frame')
	assert_true(true, "No crash, great!")
	

func teardown():
	map.queue_free()
