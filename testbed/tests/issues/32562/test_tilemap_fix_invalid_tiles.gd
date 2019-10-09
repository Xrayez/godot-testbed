extends "res://addons/gut/test.gd"

class TileMapFixInvalidTilesCrash extends TileMap:

	# https://github.com/godotengine/godot/issues/32562

	func _ready():
		set_cell(0,0,0)
		fix_invalid_tiles()

var map

func setup():
	map = TileMapFixInvalidTilesCrash.new()
	# map.tile_set = TileSet.new() # crash doesn't happen if set
	# map.tile_set = MeshLibrary.new() # throws no errors, tile_set == null
	add_child(map)


func test_fix_invalid_tiles():
	yield(get_tree(), 'idle_frame')

	assert_eq(map.tile_set, null, "There should be no tile set assigned!")
	assert_true(true, "No crash, great!")


func teardown():
	map.queue_free()
