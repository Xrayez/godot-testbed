extends "res://addons/gut/test.gd"

# https://github.com/godotengine/godot/issues/30572

class A:
	var value 
	func _init(val):
		self.value = val
		
class B:
	var value
	func init(val):
		self.value = val

func serializeA():
	var inst = A.new(1)
	var instDict = inst2dict(inst)
	var inst2 = dict2inst(instDict)
	return inst2.value

func serializeB():
	var inst = B.new()
	B.init(1)
	var instDict = inst2dict(inst)
	var inst2 = dict2inst(instDict)
	return inst2.value

		
func test_dict2inst_serialize():
	
	var value_a = serializeA()
	
	assert_true(true, "No crash, great!")
	assert_eq(value_a, 1)
	
	var value_b = serializeB()
	
	assert_eq(value_b, 1)
