// Generated Code Do Not Modify
// package org.allbinary.game.score
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class RecordStoreHighScores

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "logUtil", jr.call_static("LogUtil", "getInstance_0", []))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.set_field(this, "platformRecordIdUtil", jr.call_static("PlatformRecordIdUtil", "getInstance_0", []))
    jr.set_field(this, "tsUtil", jr.call_static("TsUtil", "getInstance_0", []))
    jr.set_field(this, "RECORD_ID", jr.JStr("_HS"))
    jr.set_field(this, "MAXHIGHSCORES", jr.as_i(jr.JInt(100)))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("RecordStoreHighScores", "hashTable", jr.call(jr.call_static("StdUtil", "getInstance_0", []), "createHashtable_0", []))
    jr.JNull
}

fn c1_m12__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_game_info, l_high_score_name, l_heading, l_column_two_heading, l_record_comparator_interface] = jargs
    jr.method(fn() {
            let l_high_scores_can_be_null = jr.call(jr.get_static("RecordStoreHighScores", "hashTable"), "get_1", [l_high_score_name])
            case jr.truth(jr.eq(l_high_scores_can_be_null, jr.JNull)) {
            True -> {
            let l_high_scores = jr.new("RecordStoreHighScores", [l_abe_client_information, l_game_info, l_high_score_name, l_heading, l_column_two_heading, l_record_comparator_interface])
            jr.call(jr.get_static("RecordStoreHighScores", "hashTable"), "put_2", [jr.call(l_high_scores, "getName_0", []), l_high_scores])
            jr.ret(l_high_scores)
            Nil
        }
            False -> Nil
        }
            jr.ret(l_high_scores_can_be_null)
        jr.JNull
    })
}

fn c1_m13__getrecordid(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information] = jargs
    jr.call(jr.get_field(this, "platformRecordIdUtil"), "getRecordId_2", [l_abe_client_information, jr.call(jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "UNDERSCORE")]), "append_1", [jr.call_inherited(this, "RecordStoreHighScores", "getName_0", [])]), "append_1", [jr.get_field(this, "RECORD_ID")]), "toString_0", [])])
}

fn c1_m14__addhighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_high_score] = jargs
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Adding HighScore: ")]), "appendlong_1", [jr.call(l_new_high_score, "getScore_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD")])
            case jr.truth(jr.call(this, "isTooManyHighScores_0", [])) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Removing Lowest Score"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD")])
                jr.call(this, "removeLowestHighScore_0", [])
                Nil
            }
                False -> Nil
            }
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call(this, "getRecordId_1", [jr.get_field(this, "abeClientInformation")]), jr.JBool(True)]))
            let l_high_score_bytes = jr.call(l_new_high_score, "getAsBytes_0", [])
            let l_record_id = jr.as_i(jr.call(jr.get(l_record_store), "addRecord_3", [l_high_score_bytes, jr.JInt(0), jr.alen(l_high_score_bytes)]))
            jr.call(this, "load_0", [])
            Nil
        }, [#(["RecordStoreException"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD"), l_e])
            Nil
        } }), #(["IOException"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD"), l_e])
            Nil
        } }), #(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD"), l_e])
            Nil
        } })], fn() {
            jr.try_catch(fn() {
                case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                    True -> {
                    jr.call_static("PreLogUtil", "put_3", [jr.JStr("Closing RecordStore"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD")])
                    jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }, [#(["RecordStoreException"], fn(l_e) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
    jr.JNull
}

fn c1_m15__removelowesthighscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call(this, "getRecordId_1", [jr.get_field(this, "abeClientInformation")]), jr.JBool(True)]))
            let l_record_enum = jr.call(jr.get(l_record_store), "enumerateRecords_3", [jr.get_static("NullRecordFilter", "NULL_RECORD_FILTER"), jr.get_static("NullRecordComparator", "NULL_RECORD_COMPARATOR"), jr.JBool(True)])
            let l_score_comparator = jr.get_field(this, "recordComparatorInterface")
            let l_best_high_score = jr.cell(jr.new("HighScore", [jr.JInt(-1), jr.JStr("none"), jr.get_static("GameInfo", "NONE"), jr.call(l_score_comparator, "getBestScore_0", [])]))
            let l_record_as_bytes = jr.cell(jr.JNull)
            let l_byte_array_input_stream = jr.cell(jr.JNull)
            let l_input_stream = jr.cell(jr.JNull)
            jr.while_loop("", fn() { jr.call(l_record_enum, "hasNextElement_0", []) }, fn() {
                let l_id = jr.as_i(jr.call(l_record_enum, "nextRecordId_0", []))
                jr.set(l_record_as_bytes, jr.call(jr.get_field(this, "tsUtil"), "getRecord_2", [jr.get(l_record_store), l_id]))
                case jr.truth(jr.ne(jr.get(l_record_as_bytes), jr.JNull)) {
                    True -> {
                    jr.set(l_byte_array_input_stream, jr.new("ByteArrayInputStream", [jr.get(l_record_as_bytes)]))
                    jr.set(l_input_stream, jr.new("DataInputStream", [jr.get(l_byte_array_input_stream)]))
                    let l_name = jr.call(jr.get(l_input_stream), "readUTF_0", [])
                    let l_next_score = jr.as_j(jr.call(jr.get(l_input_stream), "readLong_0", []))
                    let l_next_current_high_score = jr.new("HighScore", [l_id, l_name, jr.get_static("GameInfo", "NONE"), l_next_score])
                    case jr.truth(jr.eq(jr.call(jr.get_field(this, "recordComparatorInterface"), "compare_2", [jr.call(l_next_current_high_score, "getAsBytes_0", []), jr.call(jr.get(l_best_high_score), "getAsBytes_0", [])]), jr.get_static("RecordComparator", "FOLLOWS"))) {
                        True -> {
                        jr.set(l_best_high_score, l_next_current_high_score)
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
            case jr.truth(jr.ne(jr.call(jr.get(l_best_high_score), "getId_0", []), jr.JInt(-1))) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("Removing Lowest HighScore: ")]), "appendlong_1", [jr.call(jr.get(l_best_high_score), "getScore_0", [])]), "toString_0", []), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD")])
                jr.call(jr.get(l_record_store), "deleteRecord_1", [jr.call(jr.get(l_best_high_score), "getId_0", [])])
                Nil
            }
                False -> Nil
            }
            Nil
        }, [#(["RecordStoreException"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("removeLowestHighScore"), l_e])
            Nil
        } }), #(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("removeLowestHighScore"), l_e])
            Nil
        } })], fn() {
            jr.try_catch(fn() {
                case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                    True -> {
                    jr.call_static("PreLogUtil", "put_3", [jr.JStr("Closing RecordStore"), this, jr.JStr("removeLowestHighScore")])
                    jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }, [#(["RecordStoreException"], fn(l_e) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.JStr("removeLowestHighScore"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
    jr.JNull
}

fn c1_m16__load(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_record_store = jr.cell(jr.get_static("NullRecordStore", "NULL_RECORD_STORE"))
        jr.try_catch(fn() {
            jr.set(l_record_store, jr.call_static("RecordStore", "openRecordStore_2", [jr.call(this, "getRecordId_1", [jr.get_field(this, "abeClientInformation")]), jr.JBool(True)]))
            jr.call_inherited(this, "RecordStoreHighScores", "setList_1", [jr.new("BasicArrayListD", [])])
            let l_record_enum = jr.call(jr.get(l_record_store), "enumerateRecords_3", [jr.get_static("NullRecordFilter", "NULL_RECORD_FILTER"), jr.get_static("NullRecordComparator", "NULL_RECORD_COMPARATOR"), jr.JBool(True)])
            let l_record_as_bytes = jr.cell(jr.JNull)
            let l_byte_array_input_stream = jr.cell(jr.JNull)
            let l_input_stream = jr.cell(jr.JNull)
            jr.while_loop("", fn() { jr.call(l_record_enum, "hasNextElement_0", []) }, fn() {
                let l_id = jr.as_i(jr.call(l_record_enum, "nextRecordId_0", []))
                jr.set(l_record_as_bytes, jr.call(jr.get_field(this, "tsUtil"), "getRecord_2", [jr.get(l_record_store), l_id]))
                case jr.truth(jr.ne(jr.get(l_record_as_bytes), jr.JNull)) {
                    True -> {
                    jr.set(l_byte_array_input_stream, jr.new("ByteArrayInputStream", [jr.get(l_record_as_bytes)]))
                    jr.set(l_input_stream, jr.new("DataInputStream", [jr.get(l_byte_array_input_stream)]))
                    jr.try_catch(fn() {
                        let l_name = jr.call(jr.get(l_input_stream), "readUTF_0", [])
                        let l_score = jr.as_j(jr.call(jr.get(l_input_stream), "readLong_0", []))
                        let l_new_high_score = jr.new("HighScore", [l_id, l_name, jr.get_static("GameInfo", "NONE"), l_score])
                        let l_list = jr.call_inherited(this, "RecordStoreHighScores", "getList_0", [])
                        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
                        let l_last_index = jr.cell(jr.as_i(l_size))
                        {
                            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                            let l_high_score = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
                            case jr.truth(jr.eq(jr.call(jr.get_field(this, "recordComparatorInterface"), "compare_2", [jr.call(l_new_high_score, "getAsBytes_0", []), jr.call(l_high_score, "getAsBytes_0", [])]), jr.get_static("RecordComparator", "PRECEDES"))) {
                                True -> {
                                jr.set(l_last_index, jr.as_i(jr.get(l_index)))
                                jr.brk("")
                                Nil
                            }
                                False -> Nil
                            }
                            Nil
                        })
                            Nil
                        }
                        jr.call(l_list, "addAt_2", [jr.get(l_last_index), l_new_high_score])
                        Nil
                    }, [#(["EOFException"], fn(l_e) { {
                        jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.JStr("EOF"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD"), l_e])
                        jr.throw(l_e)
                        Nil
                    } })], fn() { Nil })
                    Nil
                }
                    False -> Nil
                }
                Nil
            })
            Nil
        }, [#(["RecordStoreNotFoundException"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.JStr("No High Scores"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD"), l_e])
            Nil
        } }), #(["RecordStoreException"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "UNKNOWN"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD"), l_e])
            Nil
        } }), #(["IOException"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "UNKNOWN"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD"), l_e])
            Nil
        } }), #(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "UNKNOWN"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD"), l_e])
            Nil
        } })], fn() {
            jr.try_catch(fn() {
                case jr.truth(jr.ne(jr.get(l_record_store), jr.JNull)) {
                    True -> {
                    jr.call_static("PreLogUtil", "put_3", [jr.JStr("Closing RecordStore"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD")])
                    jr.call(jr.get(l_record_store), "closeRecordStore_0", [])
                    Nil
                }
                    False -> Nil
                }
                Nil
            }, [#(["RecordStoreException"], fn(l_e) { {
                jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "LOAD"), l_e])
                Nil
            } })], fn() { Nil })
            Nil
        })
    jr.JNull
}

fn c1_m17__istoomanyhighscores(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.method(fn() {
            case jr.truth(case jr.truth(jr.ne(jr.call_inherited(this, "RecordStoreHighScores", "getList_0", []), jr.JNull)) { True -> jr.lt(jr.call(jr.call_inherited(this, "RecordStoreHighScores", "getList_0", []), "size_0", []), jr.get_field(this, "MAXHIGHSCORES")) False -> jr.JBool(False) }) {
            True -> {
            jr.ret(jr.JBool(False))
            Nil
        }
            False -> {
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.call(jr.call(jr.call(jr.new("StringMaker", []), "append_1", [jr.JStr("HighScores RecordStore Max Reached: ")]), "appendint_1", [jr.get_field(this, "MAXHIGHSCORES")]), "toString_0", []), this, jr.JStr("isTooManyHighScores")])
            jr.ret(jr.JBool(True))
            Nil
        }
        }
        jr.JNull
    })
}

fn c1_m18__isbestscore(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_new_high_score] = jargs
    jr.method(fn() {
            jr.try_catch(fn() {
            case jr.truth(jr.not(jr.call(this, "isTooManyHighScores_0", []))) {
                True -> {
                jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Slot Available for a High Score"), this, jr.JStr("isBestScore")])
                jr.ret(jr.JBool(True))
                Nil
            }
                False -> {
                let l_list = jr.call_inherited(this, "RecordStoreHighScores", "getList_0", [])
                let l_size = jr.as_i(jr.call(l_list, "size_0", []))
                {
                    let l_index = jr.cell(jr.as_i(jr.JInt(0)))
                    jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
                    let l_high_score = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
                    case jr.truth(jr.eq(jr.call(jr.get_field(this, "recordComparatorInterface"), "compare_2", [jr.call(l_new_high_score, "getAsBytes_0", []), jr.call(l_high_score, "getAsBytes_0", [])]), jr.get_static("RecordComparator", "FOLLOWS"))) {
                        True -> {
                        jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Obtained a High Score"), this, jr.JStr("isBestScore")])
                        jr.ret(jr.JBool(True))
                        Nil
                    }
                        False -> Nil
                    }
                    Nil
                })
                    Nil
                }
                Nil
            }
            }
            jr.call(jr.get_field(this, "logUtil"), "putF_3", [jr.JStr("Not a High Score"), this, jr.JStr("isBestScore")])
            jr.ret(jr.JBool(False))
            Nil
        }, [#(["Exception"], fn(l_e) { {
            jr.call(jr.get_field(this, "logUtil"), "put_4", [jr.get_field(jr.get_field(this, "commonStrings"), "EXCEPTION"), this, jr.get_field(jr.get_field(this, "commonStrings"), "ADD"), l_e])
            jr.throw(l_e)
            Nil
        } })], fn() { Nil })
        jr.JNull
    })
}

fn c1_m19__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
        let l_string_buffer = jr.new("StringMaker", [])
        jr.call(l_string_buffer, "append_1", [jr.call_super("HighScores", this, "toString_0", [])])
        let l_list = jr.call_inherited(this, "RecordStoreHighScores", "getList_0", [])
        let l_size = jr.as_i(jr.call(l_list, "size_0", []))
        {
            let l_index = jr.cell(jr.as_i(jr.JInt(0)))
            jr.for_loop("", fn() { jr.lt(jr.get(l_index), l_size) }, fn() { jr.incr(fn() { jr.get(l_index) }, fn(jv) { jr.set(l_index, jv) }, 1, True) Nil }, fn() {
            let l_high_score = jr.aget(jr.get_field(l_list, "objectArray"), jr.get(l_index))
            jr.call(l_string_buffer, "append_1", [jr.call(l_high_score, "getScoreString_0", [])])
            jr.call(l_string_buffer, "append_1", [jr.get_field(jr.call_static("CommonSeps", "getInstance_0", []), "COMMA_SEP")])
            Nil
        })
            Nil
        }
    jr.call(l_string_buffer, "toString_0", [])
}

fn c1_jinit11(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_abe_client_information, l_game_info, l_name, l_heading, l_column_two_heading, l_record_comparator_interface] = jargs
        jr.super_init("HighScores", this, [l_name, l_heading, l_column_two_heading])
        c1_jfields(this)
        jr.set_field(this, "abeClientInformation", l_abe_client_information)
        jr.set_field(this, "gameInfo", l_game_info)
        jr.set_field(this, "recordComparatorInterface", l_record_comparator_interface)
        jr.call(this, "load_0", [])
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "RecordStoreHighScores",
        "org.allbinary.game.score.RecordStoreHighScores",
        "HighScores",
        [],
        False,
        [#("logUtil", jr.JNull), #("commonStrings", jr.JNull), #("platformRecordIdUtil", jr.JNull), #("tsUtil", jr.JNull), #("RECORD_ID", jr.JNull), #("MAXHIGHSCORES", jr.JInt(0)), #("gameInfo", jr.JNull), #("abeClientInformation", jr.JNull), #("recordComparatorInterface", jr.JNull)],
        [#("hashTable", jr.JNull)],
        [
            jr.Method("getInstance_6", ["AbeClientInformationInterface", "GameInfo", "String", "String", "String", "RecordComparator"], True, c1_m12__getinstance), 
            jr.Method("getRecordId_1", ["AbeClientInformationInterface"], False, c1_m13__getrecordid), 
            jr.Method("addHighScore_1", ["HighScore"], False, c1_m14__addhighscore), 
            jr.Method("removeLowestHighScore_0", [], False, c1_m15__removelowesthighscore), 
            jr.Method("load_0", [], False, c1_m16__load), 
            jr.Method("isTooManyHighScores_0", [], False, c1_m17__istoomanyhighscores), 
            jr.Method("isBestScore_1", ["HighScore"], False, c1_m18__isbestscore), 
            jr.Method("toString_0", [], False, c1_m19__tostring), 
            jr.Method("jinit_6", ["AbeClientInformationInterface", "GameInfo", "String", "String", "String", "RecordComparator"], False, c1_jinit11)],
        c1_jfields,
        c1_jclinit,
    )
}

