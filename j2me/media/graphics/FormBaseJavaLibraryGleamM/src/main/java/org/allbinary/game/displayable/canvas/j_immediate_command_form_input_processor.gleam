// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ImmediateCommandFormInputProcessor

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "timeHelper", jr.new("TimeDelayHelper", [jr.JInt(25)]))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m4__onpressgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.try_catch(fn() {
            jr.call_super("CommandFormInputProcessor", this, "onPressGameKeyEvent_1", [l_game_key_event])
            case jr.truth(jr.call(jr.get_field(this, "timeHelper"), "isTimeTNT_0", [])) {
                True -> {
                jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "processInputList_0", [])
                jr.call(jr.get_field(jr.get_field(this, "gameCommandCanvas"), "repaintBehavior"), "onChangeRepaint_1", [jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "getCanvas_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "gameInputStrings"), "ON_PRESS_GAME_KEY"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m5__ondowngamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.try_catch(fn() {
            jr.call_super("CommandFormInputProcessor", this, "onDownGameKeyEvent_1", [l_game_key_event])
            case jr.truth(jr.call(jr.get_field(this, "timeHelper"), "isTimeTNT_0", [])) {
                True -> {
                jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "processInputList_0", [])
                jr.call(jr.get_field(jr.get_field(this, "gameCommandCanvas"), "repaintBehavior"), "onChangeRepaint_1", [jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "getCanvas_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "gameInputStrings"), "ON_DOWN_GAME_KEY"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m6__onupgamekeyevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event] = jargs
        jr.try_catch(fn() {
            jr.call_super("CommandFormInputProcessor", this, "onUpGameKeyEvent_1", [l_game_key_event])
            case jr.truth(jr.call(jr.get_field(this, "timeHelper"), "isTimeTNT_0", [])) {
                True -> {
                jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "processInputList_0", [])
                jr.call(jr.get_field(jr.get_field(this, "gameCommandCanvas"), "repaintBehavior"), "onChangeRepaint_1", [jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "getCanvas_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "gameInputStrings"), "ON_UP_GAME_KEY"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_m7__onmotiongestureevent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_motion_gesture_event] = jargs
        jr.try_catch(fn() {
            jr.call_super("CommandFormInputProcessor", this, "onMotionGestureEvent_1", [l_motion_gesture_event])
            case jr.truth(jr.call(jr.get_field(this, "timeHelper"), "isTimeTNT_0", [])) {
                True -> {
                jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "processInputList_0", [])
                jr.call(jr.get_field(jr.get_field(this, "gameCommandCanvas"), "repaintBehavior"), "onChangeRepaint_1", [jr.call_inherited(this, "ImmediateCommandFormInputProcessor", "getCanvas_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "logUtil"), "put_4", [jr.get_field(jr.get_inherited(this, "ImmediateCommandFormInputProcessor", "commonStrings"), "EXCEPTION"), this, jr.JStr("onMotionGestureEvent"), l_e])
            Nil
        } })], fn() { Nil })
    jr.JNull
}

fn c1_jinit3(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_game_key_event_list, l_player_input_id, l_game_command_canvas, l_form] = jargs
    let l_player_input_id = jr.as_i(l_player_input_id)
        jr.super_init("CommandFormInputProcessor", this, [l_game_key_event_list, l_player_input_id, l_game_command_canvas, l_form])
        c1_jfields(this)
        jr.set_field(this, "gameCommandCanvas", l_game_command_canvas)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ImmediateCommandFormInputProcessor",
        "org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor",
        "CommandFormInputProcessor",
        [],
        False,
        [#("timeHelper", jr.JNull), #("gameCommandCanvas", jr.JNull)],
        [],
        [
            jr.Method("onPressGameKeyEvent_1", ["GameKeyEvent"], False, c1_m4__onpressgamekeyevent), 
            jr.Method("onDownGameKeyEvent_1", ["GameKeyEvent"], False, c1_m5__ondowngamekeyevent), 
            jr.Method("onUpGameKeyEvent_1", ["GameKeyEvent"], False, c1_m6__onupgamekeyevent), 
            jr.Method("onMotionGestureEvent_1", ["MotionGestureEvent"], False, c1_m7__onmotiongestureevent), 
            jr.Method("jinit_4", ["BasicArrayList", "int", "GameCommandCanvas", "ScrollSelectionForm"], False, c1_jinit3)],
        c1_jfields,
        c1_jclinit,
    )
}

