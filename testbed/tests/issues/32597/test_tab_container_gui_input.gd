extends "res://addons/gut/test.gd"

# https://github.com/godotengine/godot/issues/32597

class TabContainerGuiInputCrash extends TabContainer:

    var ev = InputEventMouseButton.new()
    
    func _ready():
        var pm := PopupMenu.new()
        set_popup(pm)
        pm.queue_free()
    
        yield(get_tree(), "idle_frame")
        yield(get_tree(), "idle_frame")
        yield(get_tree(), "idle_frame")
    
        ev.pressed = true
        ev.button_index = BUTTON_LEFT
        ev.button_mask = BUTTON_LEFT
        ev.position = Vector2(0, 14)
        
        Input.parse_input_event(ev)
        
        yield(get_tree(), "idle_frame")
        yield(get_tree(), "idle_frame")
        
        Input.parse_input_event(ev)
        Input.parse_input_event(ev)
        
var container

func setup():
    var gut_window = get_parent().get_node('Gut')
    gut_window.hide() # need to hide to properly detect input event
    
    container = TabContainerGuiInputCrash.new()
    add_child(container)
        
            
func test_tab_container_gui_input():
    yield(yield_for(1.0, 'Hopefully no crash happens.'), YIELD)
    assert_true(true, "No crash, great!")
    

func teardown():
    container.queue_free()
    