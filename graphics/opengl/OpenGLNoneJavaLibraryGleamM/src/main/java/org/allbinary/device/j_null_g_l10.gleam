// Generated Code Do Not Modify
// package org.allbinary.device
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class NullGL10

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("NullGL10", "NULL_GL10", jr.new("NullGL10", []))
    jr.JNull
}

fn c1_m2__glactivetexture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_texture] = jargs
    let l_texture = jr.as_i(l_texture)
    jr.JNull
}

fn c1_m3__glalphafunc(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_func, l_ref] = jargs
    let l_func = jr.as_i(l_func)
    let l_ref = jr.as_f(l_ref)
    jr.JNull
}

fn c1_m4__glbindtexture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_texture] = jargs
    let l_target = jr.as_i(l_target)
    let l_texture = jr.as_i(l_texture)
    jr.JNull
}

fn c1_m5__glblendfunc(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_sfactor, l_dfactor] = jargs
    let l_sfactor = jr.as_i(l_sfactor)
    let l_dfactor = jr.as_i(l_dfactor)
    jr.JNull
}

fn c1_m6__glclear(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mask] = jargs
    let l_mask = jr.as_i(l_mask)
    jr.JNull
}

fn c1_m7__glclearcolor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_red, l_green, l_blue, l_alpha] = jargs
    let l_red = jr.as_f(l_red)
    let l_green = jr.as_f(l_green)
    let l_blue = jr.as_f(l_blue)
    let l_alpha = jr.as_f(l_alpha)
    jr.JNull
}

fn c1_m8__glcleardepthf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_depth] = jargs
    let l_depth = jr.as_f(l_depth)
    jr.JNull
}

fn c1_m9__glclearstencil(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_s] = jargs
    let l_s = jr.as_i(l_s)
    jr.JNull
}

fn c1_m10__glclientactivetexture(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_texture] = jargs
    let l_texture = jr.as_i(l_texture)
    jr.JNull
}

fn c1_m11__glcolor4f(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_red, l_green, l_blue, l_alpha] = jargs
    let l_red = jr.as_f(l_red)
    let l_green = jr.as_f(l_green)
    let l_blue = jr.as_f(l_blue)
    let l_alpha = jr.as_f(l_alpha)
    jr.JNull
}

fn c1_m12__glcolormask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_red, l_green, l_blue, l_alpha] = jargs
    jr.JNull
}

fn c1_m13__glcolorpointer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size, l_type, l_stride, l_pointer] = jargs
    let l_size = jr.as_i(l_size)
    let l_type = jr.as_i(l_type)
    let l_stride = jr.as_i(l_stride)
    jr.JNull
}

fn c1_m14__glcompressedteximage2d(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_level, l_internalformat, l_width, l_height, l_border, l_image_size, l_data] = jargs
    let l_target = jr.as_i(l_target)
    let l_level = jr.as_i(l_level)
    let l_internalformat = jr.as_i(l_internalformat)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_border = jr.as_i(l_border)
    let l_image_size = jr.as_i(l_image_size)
    jr.JNull
}

fn c1_m15__glcompressedtexsubimage2d(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_level, l_xoffset, l_yoffset, l_width, l_height, l_format, l_image_size, l_data] = jargs
    let l_target = jr.as_i(l_target)
    let l_level = jr.as_i(l_level)
    let l_xoffset = jr.as_i(l_xoffset)
    let l_yoffset = jr.as_i(l_yoffset)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_format = jr.as_i(l_format)
    let l_image_size = jr.as_i(l_image_size)
    jr.JNull
}

fn c1_m16__glcopyteximage2d(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_level, l_internalformat, l_x, l_y, l_width, l_height, l_border] = jargs
    let l_target = jr.as_i(l_target)
    let l_level = jr.as_i(l_level)
    let l_internalformat = jr.as_i(l_internalformat)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_border = jr.as_i(l_border)
    jr.JNull
}

fn c1_m17__glcopytexsubimage2d(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_level, l_xoffset, l_yoffset, l_x, l_y, l_width, l_height] = jargs
    let l_target = jr.as_i(l_target)
    let l_level = jr.as_i(l_level)
    let l_xoffset = jr.as_i(l_xoffset)
    let l_yoffset = jr.as_i(l_yoffset)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m18__glcullface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode] = jargs
    let l_mode = jr.as_i(l_mode)
    jr.JNull
}

fn c1_m19__gldeletetextures(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_n, l_textures, l_offset] = jargs
    let l_n = jr.as_i(l_n)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m20__gldeletetextures(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_n, l_textures] = jargs
    let l_n = jr.as_i(l_n)
    jr.JNull
}

fn c1_m21__gldepthfunc(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_func] = jargs
    let l_func = jr.as_i(l_func)
    jr.JNull
}

fn c1_m22__gldepthmask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_flag] = jargs
    jr.JNull
}

fn c1_m23__gldepthrangef(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_z_near, l_z_far] = jargs
    let l_z_near = jr.as_f(l_z_near)
    let l_z_far = jr.as_f(l_z_far)
    jr.JNull
}

fn c1_m24__gldisable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cap] = jargs
    let l_cap = jr.as_i(l_cap)
    jr.JNull
}

fn c1_m25__gldisableclientstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    let l_array = jr.as_i(l_array)
    jr.JNull
}

fn c1_m26__gldrawarrays(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode, l_first, l_count] = jargs
    let l_mode = jr.as_i(l_mode)
    let l_first = jr.as_i(l_first)
    let l_count = jr.as_i(l_count)
    jr.JNull
}

fn c1_m27__gldrawelements(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode, l_count, l_type, l_indices] = jargs
    let l_mode = jr.as_i(l_mode)
    let l_count = jr.as_i(l_count)
    let l_type = jr.as_i(l_type)
    jr.JNull
}

fn c1_m28__glenable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_cap] = jargs
    let l_cap = jr.as_i(l_cap)
    jr.JNull
}

fn c1_m29__glenableclientstate(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_array] = jargs
    let l_array = jr.as_i(l_array)
    jr.JNull
}

fn c1_m30__glfinish(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m31__glflush(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m32__glfogf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_param] = jargs
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_f(l_param)
    jr.JNull
}

fn c1_m33__glfogfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_params, l_offset] = jargs
    let l_pname = jr.as_i(l_pname)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m34__glfogfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_params] = jargs
    let l_pname = jr.as_i(l_pname)
    jr.JNull
}

fn c1_m35__glfrontface(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode] = jargs
    let l_mode = jr.as_i(l_mode)
    jr.JNull
}

fn c1_m36__glfrustumf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_left, l_right, l_bottom, l_top, l_z_near, l_z_far] = jargs
    let l_left = jr.as_f(l_left)
    let l_right = jr.as_f(l_right)
    let l_bottom = jr.as_f(l_bottom)
    let l_top = jr.as_f(l_top)
    let l_z_near = jr.as_f(l_z_near)
    let l_z_far = jr.as_f(l_z_far)
    jr.JNull
}

fn c1_m37__glgentextures(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_n, l_textures, l_offset] = jargs
    let l_n = jr.as_i(l_n)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m38__glgentextures(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_n, l_textures] = jargs
    let l_n = jr.as_i(l_n)
    jr.JNull
}

fn c1_m39__glgeterror(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.JInt(0))
}

fn c1_m40__glgetintegerv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_params, l_offset] = jargs
    let l_pname = jr.as_i(l_pname)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m41__glgetintegerv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_params] = jargs
    let l_pname = jr.as_i(l_pname)
    jr.JNull
}

fn c1_m42__glgetstring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_name] = jargs
    let l_name = jr.as_i(l_name)
    jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")
}

fn c1_m43__glhint(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_mode] = jargs
    let l_target = jr.as_i(l_target)
    let l_mode = jr.as_i(l_mode)
    jr.JNull
}

fn c1_m44__gllightmodelf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_param] = jargs
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_f(l_param)
    jr.JNull
}

fn c1_m45__gllightmodelfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_params, l_offset] = jargs
    let l_pname = jr.as_i(l_pname)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m46__gllightmodelfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_params] = jargs
    let l_pname = jr.as_i(l_pname)
    jr.JNull
}

fn c1_m47__gllightf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_light, l_pname, l_param] = jargs
    let l_light = jr.as_i(l_light)
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_f(l_param)
    jr.JNull
}

fn c1_m48__gllightfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_light, l_pname, l_params, l_offset] = jargs
    let l_light = jr.as_i(l_light)
    let l_pname = jr.as_i(l_pname)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m49__gllightfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_light, l_pname, l_params] = jargs
    let l_light = jr.as_i(l_light)
    let l_pname = jr.as_i(l_pname)
    jr.JNull
}

fn c1_m50__gllinewidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_width] = jargs
    let l_width = jr.as_f(l_width)
    jr.JNull
}

fn c1_m51__glloadidentity(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m52__glloadmatrixf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_m, l_offset] = jargs
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m53__glloadmatrixf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_m] = jargs
    jr.JNull
}

fn c1_m54__gllogicop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_opcode] = jargs
    let l_opcode = jr.as_i(l_opcode)
    jr.JNull
}

fn c1_m55__glmaterialf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_face, l_pname, l_param] = jargs
    let l_face = jr.as_i(l_face)
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_f(l_param)
    jr.JNull
}

fn c1_m56__glmaterialfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_face, l_pname, l_params, l_offset] = jargs
    let l_face = jr.as_i(l_face)
    let l_pname = jr.as_i(l_pname)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m57__glmaterialfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_face, l_pname, l_params] = jargs
    let l_face = jr.as_i(l_face)
    let l_pname = jr.as_i(l_pname)
    jr.JNull
}

fn c1_m58__glmatrixmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode] = jargs
    let l_mode = jr.as_i(l_mode)
    jr.JNull
}

fn c1_m59__glmultmatrixf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_m, l_offset] = jargs
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m60__glmultmatrixf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_m] = jargs
    jr.JNull
}

fn c1_m61__glmultitexcoord4f(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_s, l_t, l_r, l_q] = jargs
    let l_target = jr.as_i(l_target)
    let l_s = jr.as_f(l_s)
    let l_t = jr.as_f(l_t)
    let l_r = jr.as_f(l_r)
    let l_q = jr.as_f(l_q)
    jr.JNull
}

fn c1_m62__glnormal3f(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_nx, l_ny, l_nz] = jargs
    let l_nx = jr.as_f(l_nx)
    let l_ny = jr.as_f(l_ny)
    let l_nz = jr.as_f(l_nz)
    jr.JNull
}

fn c1_m63__glnormalpointer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_type, l_stride, l_pointer] = jargs
    let l_type = jr.as_i(l_type)
    let l_stride = jr.as_i(l_stride)
    jr.JNull
}

fn c1_m64__glorthof(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_left, l_right, l_bottom, l_top, l_z_near, l_z_far] = jargs
    let l_left = jr.as_f(l_left)
    let l_right = jr.as_f(l_right)
    let l_bottom = jr.as_f(l_bottom)
    let l_top = jr.as_f(l_top)
    let l_z_near = jr.as_f(l_z_near)
    let l_z_far = jr.as_f(l_z_far)
    jr.JNull
}

fn c1_m65__glpixelstorei(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pname, l_param] = jargs
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_i(l_param)
    jr.JNull
}

fn c1_m66__glpointsize(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size] = jargs
    let l_size = jr.as_f(l_size)
    jr.JNull
}

fn c1_m67__glpolygonoffset(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_factor, l_units] = jargs
    let l_factor = jr.as_f(l_factor)
    let l_units = jr.as_f(l_units)
    jr.JNull
}

fn c1_m68__glpopmatrix(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m69__glpushmatrix(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m70__glreadpixels(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_width, l_height, l_format, l_type, l_pixels] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_format = jr.as_i(l_format)
    let l_type = jr.as_i(l_type)
    jr.JNull
}

fn c1_m71__glrotatef(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle, l_x, l_y, l_z] = jargs
    let l_angle = jr.as_f(l_angle)
    let l_x = jr.as_f(l_x)
    let l_y = jr.as_f(l_y)
    let l_z = jr.as_f(l_z)
    jr.JNull
}

fn c1_m72__glrotatex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_angle, l_x, l_y, l_z] = jargs
    let l_angle = jr.as_i(l_angle)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.JNull
}

fn c1_m73__glsamplecoverage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_value, l_invert] = jargs
    let l_value = jr.as_f(l_value)
    jr.JNull
}

fn c1_m74__glscalef(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_f(l_x)
    let l_y = jr.as_f(l_y)
    let l_z = jr.as_f(l_z)
    jr.JNull
}

fn c1_m75__glscalex(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_z = jr.as_i(l_z)
    jr.JNull
}

fn c1_m76__glscissor(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_width, l_height] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m77__glshademodel(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mode] = jargs
    let l_mode = jr.as_i(l_mode)
    jr.JNull
}

fn c1_m78__glstencilfunc(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_func, l_ref, l_mask] = jargs
    let l_func = jr.as_i(l_func)
    let l_ref = jr.as_i(l_ref)
    let l_mask = jr.as_i(l_mask)
    jr.JNull
}

fn c1_m79__glstencilmask(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_mask] = jargs
    let l_mask = jr.as_i(l_mask)
    jr.JNull
}

fn c1_m80__glstencilop(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_fail, l_zfail, l_zpass] = jargs
    let l_fail = jr.as_i(l_fail)
    let l_zfail = jr.as_i(l_zfail)
    let l_zpass = jr.as_i(l_zpass)
    jr.JNull
}

fn c1_m81__gltexcoordpointer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size, l_type, l_stride, l_pointer] = jargs
    let l_size = jr.as_i(l_size)
    let l_type = jr.as_i(l_type)
    let l_stride = jr.as_i(l_stride)
    jr.JNull
}

fn c1_m82__gltexenvf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_pname, l_param] = jargs
    let l_target = jr.as_i(l_target)
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_f(l_param)
    jr.JNull
}

fn c1_m83__gltexenvfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_pname, l_params, l_offset] = jargs
    let l_target = jr.as_i(l_target)
    let l_pname = jr.as_i(l_pname)
    let l_offset = jr.as_i(l_offset)
    jr.JNull
}

fn c1_m84__gltexenvfv(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_pname, l_params] = jargs
    let l_target = jr.as_i(l_target)
    let l_pname = jr.as_i(l_pname)
    jr.JNull
}

fn c1_m85__glteximage2d(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_level, l_internalformat, l_width, l_height, l_border, l_format, l_type, l_pixels] = jargs
    let l_target = jr.as_i(l_target)
    let l_level = jr.as_i(l_level)
    let l_internalformat = jr.as_i(l_internalformat)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_border = jr.as_i(l_border)
    let l_format = jr.as_i(l_format)
    let l_type = jr.as_i(l_type)
    jr.JNull
}

fn c1_m86__gltexparameterf(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_pname, l_param] = jargs
    let l_target = jr.as_i(l_target)
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_f(l_param)
    jr.JNull
}

fn c1_m87__gltexparameteri(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_pname, l_param] = jargs
    let l_target = jr.as_i(l_target)
    let l_pname = jr.as_i(l_pname)
    let l_param = jr.as_i(l_param)
    jr.JNull
}

fn c1_m88__gltexsubimage2d(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_target, l_level, l_xoffset, l_yoffset, l_width, l_height, l_format, l_type, l_pixels] = jargs
    let l_target = jr.as_i(l_target)
    let l_level = jr.as_i(l_level)
    let l_xoffset = jr.as_i(l_xoffset)
    let l_yoffset = jr.as_i(l_yoffset)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_format = jr.as_i(l_format)
    let l_type = jr.as_i(l_type)
    jr.JNull
}

fn c1_m89__gltranslatef(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_z] = jargs
    let l_x = jr.as_f(l_x)
    let l_y = jr.as_f(l_y)
    let l_z = jr.as_f(l_z)
    jr.JNull
}

fn c1_m90__glvertexpointer(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_size, l_type, l_stride, l_pointer] = jargs
    let l_size = jr.as_i(l_size)
    let l_type = jr.as_i(l_type)
    let l_stride = jr.as_i(l_stride)
    jr.JNull
}

fn c1_m91__glviewport(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_x, l_y, l_width, l_height] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m92__glbegin(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_i] = jargs
    let l_i = jr.as_i(l_i)
    jr.JNull
}

fn c1_m93__glend(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.JNull
}

fn c1_m94__glvertex3f(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_f, l_f2, l_f3] = jargs
    let l_f = jr.as_f(l_f)
    let l_f2 = jr.as_f(l_f2)
    let l_f3 = jr.as_f(l_f3)
    jr.JNull
}

fn c1_m95__glpolygonmode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_i, l_i1] = jargs
    let l_i = jr.as_i(l_i)
    let l_i1 = jr.as_i(l_i1)
    jr.JNull
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "NullGL10",
        "org.allbinary.device.NullGL10",
        "Object",
        ["GL10"],
        False,
        [],
        [#("NULL_GL10", jr.JNull)],
        [
            jr.Method("glActiveTexture_1", ["int"], False, c1_m2__glactivetexture), 
            jr.Method("glAlphaFunc_2", ["int", "float"], False, c1_m3__glalphafunc), 
            jr.Method("glBindTexture_2", ["int", "int"], False, c1_m4__glbindtexture), 
            jr.Method("glBlendFunc_2", ["int", "int"], False, c1_m5__glblendfunc), 
            jr.Method("glClear_1", ["int"], False, c1_m6__glclear), 
            jr.Method("glClearColor_4", ["float", "float", "float", "float"], False, c1_m7__glclearcolor), 
            jr.Method("glClearDepthf_1", ["float"], False, c1_m8__glcleardepthf), 
            jr.Method("glClearStencil_1", ["int"], False, c1_m9__glclearstencil), 
            jr.Method("glClientActiveTexture_1", ["int"], False, c1_m10__glclientactivetexture), 
            jr.Method("glColor4f_4", ["float", "float", "float", "float"], False, c1_m11__glcolor4f), 
            jr.Method("glColorMask_4", ["boolean", "boolean", "boolean", "boolean"], False, c1_m12__glcolormask), 
            jr.Method("glColorPointer_4", ["int", "int", "int", "Buffer"], False, c1_m13__glcolorpointer), 
            jr.Method("glCompressedTexImage2D_8", ["int", "int", "int", "int", "int", "int", "int", "Buffer"], False, c1_m14__glcompressedteximage2d), 
            jr.Method("glCompressedTexSubImage2D_9", ["int", "int", "int", "int", "int", "int", "int", "int", "Buffer"], False, c1_m15__glcompressedtexsubimage2d), 
            jr.Method("glCopyTexImage2D_8", ["int", "int", "int", "int", "int", "int", "int", "int"], False, c1_m16__glcopyteximage2d), 
            jr.Method("glCopyTexSubImage2D_8", ["int", "int", "int", "int", "int", "int", "int", "int"], False, c1_m17__glcopytexsubimage2d), 
            jr.Method("glCullFace_1", ["int"], False, c1_m18__glcullface), 
            jr.Method("glDeleteTextures_3", ["int", "intArr", "int"], False, c1_m19__gldeletetextures), 
            jr.Method("glDeleteTextures_2", ["int", "IntBuffer"], False, c1_m20__gldeletetextures), 
            jr.Method("glDepthFunc_1", ["int"], False, c1_m21__gldepthfunc), 
            jr.Method("glDepthMask_1", ["boolean"], False, c1_m22__gldepthmask), 
            jr.Method("glDepthRangef_2", ["float", "float"], False, c1_m23__gldepthrangef), 
            jr.Method("glDisable_1", ["int"], False, c1_m24__gldisable), 
            jr.Method("glDisableClientState_1", ["int"], False, c1_m25__gldisableclientstate), 
            jr.Method("glDrawArrays_3", ["int", "int", "int"], False, c1_m26__gldrawarrays), 
            jr.Method("glDrawElements_4", ["int", "int", "int", "Buffer"], False, c1_m27__gldrawelements), 
            jr.Method("glEnable_1", ["int"], False, c1_m28__glenable), 
            jr.Method("glEnableClientState_1", ["int"], False, c1_m29__glenableclientstate), 
            jr.Method("glFinish_0", [], False, c1_m30__glfinish), 
            jr.Method("glFlush_0", [], False, c1_m31__glflush), 
            jr.Method("glFogf_2", ["int", "float"], False, c1_m32__glfogf), 
            jr.Method("glFogfv_3", ["int", "floatArr", "int"], False, c1_m33__glfogfv), 
            jr.Method("glFogfv_2", ["int", "FloatBuffer"], False, c1_m34__glfogfv), 
            jr.Method("glFrontFace_1", ["int"], False, c1_m35__glfrontface), 
            jr.Method("glFrustumf_6", ["float", "float", "float", "float", "float", "float"], False, c1_m36__glfrustumf), 
            jr.Method("glGenTextures_3", ["int", "intArr", "int"], False, c1_m37__glgentextures), 
            jr.Method("glGenTextures_2", ["int", "IntBuffer"], False, c1_m38__glgentextures), 
            jr.Method("glGetError_0", [], False, c1_m39__glgeterror), 
            jr.Method("glGetIntegerv_3", ["int", "intArr", "int"], False, c1_m40__glgetintegerv), 
            jr.Method("glGetIntegerv_2", ["int", "IntBuffer"], False, c1_m41__glgetintegerv), 
            jr.Method("glGetString_1", ["int"], False, c1_m42__glgetstring), 
            jr.Method("glHint_2", ["int", "int"], False, c1_m43__glhint), 
            jr.Method("glLightModelf_2", ["int", "float"], False, c1_m44__gllightmodelf), 
            jr.Method("glLightModelfv_3", ["int", "floatArr", "int"], False, c1_m45__gllightmodelfv), 
            jr.Method("glLightModelfv_2", ["int", "FloatBuffer"], False, c1_m46__gllightmodelfv), 
            jr.Method("glLightf_3", ["int", "int", "float"], False, c1_m47__gllightf), 
            jr.Method("glLightfv_4", ["int", "int", "floatArr", "int"], False, c1_m48__gllightfv), 
            jr.Method("glLightfv_3", ["int", "int", "FloatBuffer"], False, c1_m49__gllightfv), 
            jr.Method("glLineWidth_1", ["float"], False, c1_m50__gllinewidth), 
            jr.Method("glLoadIdentity_0", [], False, c1_m51__glloadidentity), 
            jr.Method("glLoadMatrixf_2", ["floatArr", "int"], False, c1_m52__glloadmatrixf), 
            jr.Method("glLoadMatrixf_1", ["FloatBuffer"], False, c1_m53__glloadmatrixf), 
            jr.Method("glLogicOp_1", ["int"], False, c1_m54__gllogicop), 
            jr.Method("glMaterialf_3", ["int", "int", "float"], False, c1_m55__glmaterialf), 
            jr.Method("glMaterialfv_4", ["int", "int", "floatArr", "int"], False, c1_m56__glmaterialfv), 
            jr.Method("glMaterialfv_3", ["int", "int", "FloatBuffer"], False, c1_m57__glmaterialfv), 
            jr.Method("glMatrixMode_1", ["int"], False, c1_m58__glmatrixmode), 
            jr.Method("glMultMatrixf_2", ["floatArr", "int"], False, c1_m59__glmultmatrixf), 
            jr.Method("glMultMatrixf_1", ["FloatBuffer"], False, c1_m60__glmultmatrixf), 
            jr.Method("glMultiTexCoord4f_5", ["int", "float", "float", "float", "float"], False, c1_m61__glmultitexcoord4f), 
            jr.Method("glNormal3f_3", ["float", "float", "float"], False, c1_m62__glnormal3f), 
            jr.Method("glNormalPointer_3", ["int", "int", "Buffer"], False, c1_m63__glnormalpointer), 
            jr.Method("glOrthof_6", ["float", "float", "float", "float", "float", "float"], False, c1_m64__glorthof), 
            jr.Method("glPixelStorei_2", ["int", "int"], False, c1_m65__glpixelstorei), 
            jr.Method("glPointSize_1", ["float"], False, c1_m66__glpointsize), 
            jr.Method("glPolygonOffset_2", ["float", "float"], False, c1_m67__glpolygonoffset), 
            jr.Method("glPopMatrix_0", [], False, c1_m68__glpopmatrix), 
            jr.Method("glPushMatrix_0", [], False, c1_m69__glpushmatrix), 
            jr.Method("glReadPixels_7", ["int", "int", "int", "int", "int", "int", "Buffer"], False, c1_m70__glreadpixels), 
            jr.Method("glRotatef_4", ["float", "float", "float", "float"], False, c1_m71__glrotatef), 
            jr.Method("glRotatex_4", ["int", "int", "int", "int"], False, c1_m72__glrotatex), 
            jr.Method("glSampleCoverage_2", ["float", "boolean"], False, c1_m73__glsamplecoverage), 
            jr.Method("glScalef_3", ["float", "float", "float"], False, c1_m74__glscalef), 
            jr.Method("glScalex_3", ["int", "int", "int"], False, c1_m75__glscalex), 
            jr.Method("glScissor_4", ["int", "int", "int", "int"], False, c1_m76__glscissor), 
            jr.Method("glShadeModel_1", ["int"], False, c1_m77__glshademodel), 
            jr.Method("glStencilFunc_3", ["int", "int", "int"], False, c1_m78__glstencilfunc), 
            jr.Method("glStencilMask_1", ["int"], False, c1_m79__glstencilmask), 
            jr.Method("glStencilOp_3", ["int", "int", "int"], False, c1_m80__glstencilop), 
            jr.Method("glTexCoordPointer_4", ["int", "int", "int", "Buffer"], False, c1_m81__gltexcoordpointer), 
            jr.Method("glTexEnvf_3", ["int", "int", "float"], False, c1_m82__gltexenvf), 
            jr.Method("glTexEnvfv_4", ["int", "int", "floatArr", "int"], False, c1_m83__gltexenvfv), 
            jr.Method("glTexEnvfv_3", ["int", "int", "FloatBuffer"], False, c1_m84__gltexenvfv), 
            jr.Method("glTexImage2D_9", ["int", "int", "int", "int", "int", "int", "int", "int", "Buffer"], False, c1_m85__glteximage2d), 
            jr.Method("glTexParameterf_3", ["int", "int", "float"], False, c1_m86__gltexparameterf), 
            jr.Method("glTexParameteri_3", ["int", "int", "int"], False, c1_m87__gltexparameteri), 
            jr.Method("glTexSubImage2D_9", ["int", "int", "int", "int", "int", "int", "int", "int", "Buffer"], False, c1_m88__gltexsubimage2d), 
            jr.Method("glTranslatef_3", ["float", "float", "float"], False, c1_m89__gltranslatef), 
            jr.Method("glVertexPointer_4", ["int", "int", "int", "Buffer"], False, c1_m90__glvertexpointer), 
            jr.Method("glViewport_4", ["int", "int", "int", "int"], False, c1_m91__glviewport), 
            jr.Method("glBegin_1", ["int"], False, c1_m92__glbegin), 
            jr.Method("glEnd_0", [], False, c1_m93__glend), 
            jr.Method("glVertex3f_3", ["float", "float", "float"], False, c1_m94__glvertex3f), 
            jr.Method("glPolygonMode_2", ["int", "int"], False, c1_m95__glpolygonmode), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

