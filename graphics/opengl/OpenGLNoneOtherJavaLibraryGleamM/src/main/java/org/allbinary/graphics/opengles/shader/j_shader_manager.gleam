// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles.shader
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class ShaderManager

fn c1_jfields(this: jr.V) -> jr.V {
    jr.set_field(this, "LOAD_SHADER", jr.JStr("loadShader"))
    jr.set_field(this, "commonStrings", jr.call_static("CommonStrings", "getInstance_0", []))
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("ShaderManager", "instance", jr.new("ShaderManager", [jr.JInt(-1), jr.JInt(-1)]))
    jr.JNull
}

fn c1_m2__getinstance(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_static("ShaderManager", "instance")
}

fn c1_m8__load(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_resource, l_shader_as_string_array, l_shader_type] = jargs
    let l_shader_type = jr.as_i(l_shader_type)
    jr.as_i(jr.JInt(-1))
}

fn c1_m9__loadshader(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_gl, l_resource, l_string_list, l_shader_type] = jargs
    let l_shader_type = jr.as_i(l_shader_type)
    jr.as_i(jr.JInt(-1))
}

fn c1_jinit7(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l__g_l___v_e_r_t_e_x___s_h_a_d_e_r, l__g_l___f_r_a_g_m_e_n_t___s_h_a_d_e_r] = jargs
    let l__g_l___v_e_r_t_e_x___s_h_a_d_e_r = jr.as_i(l__g_l___v_e_r_t_e_x___s_h_a_d_e_r)
    let l__g_l___f_r_a_g_m_e_n_t___s_h_a_d_e_r = jr.as_i(l__g_l___f_r_a_g_m_e_n_t___s_h_a_d_e_r)
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "GL_VERTEX_SHADER", jr.as_i(l__g_l___v_e_r_t_e_x___s_h_a_d_e_r))
        jr.set_field(this, "GL_FRAGMENT_SHADER", jr.as_i(l__g_l___f_r_a_g_m_e_n_t___s_h_a_d_e_r))
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "ShaderManager",
        "org.allbinary.graphics.opengles.shader.ShaderManager",
        "Object",
        [],
        False,
        [#("LOAD_SHADER", jr.JNull), #("commonStrings", jr.JNull), #("GL_VERTEX_SHADER", jr.JInt(0)), #("GL_FRAGMENT_SHADER", jr.JInt(0))],
        [#("instance", jr.JNull)],
        [
            jr.Method("getInstance_0", [], True, c1_m2__getinstance), 
            jr.Method("load_4", ["GL10", "String", "StringArr", "int"], False, c1_m8__load), 
            jr.Method("loadShader_4", ["GL10", "String", "BasicArrayList", "int"], False, c1_m9__loadshader), 
            jr.Method("jinit_2", ["int", "int"], False, c1_jinit7)],
        c1_jfields,
        c1_jclinit,
    )
}

