// Generated Code Do Not Modify
// package javax.microedition.lcdui
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class PlatformImage

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_m1__getimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics_surface2] = jargs
    jr.get_static("NullImage", "NULL_IMAGE")
}

fn c1_m2__getsurfacewidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics_surface2, l_width] = jargs
    let l_width = jr.as_i(l_width)
    jr.as_i(l_width)
}

fn c1_m3__getsurfaceheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics_surface2, l_height] = jargs
    let l_height = jr.as_i(l_height)
    jr.as_i(l_height)
}

fn c1_m4__getwidth(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_width] = jargs
    let l_width = jr.as_i(l_width)
    jr.as_i(l_width)
}

fn c1_m5__getheight(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_height] = jargs
    let l_height = jr.as_i(l_height)
    jr.as_i(l_height)
}

fn c1_m6__getgraphics(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_graphics_surface, l_width, l_height, l_image] = jargs
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
        jr.throw(jr.new("RuntimeException", []))
    jr.JNull
}

fn c1_m7__drawimage(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_x, l_y, l_anchor, l_g2, l_g] = jargs
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_anchor = jr.as_i(l_anchor)
    jr.JNull
}

fn c1_m8__drawregion(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image, l_x__src, l_y__src, l_width, l_height, l_transform, l_x__dst, l_y__dst, l_anchor, l_g] = jargs
    let l_x__src = jr.as_i(l_x__src)
    let l_y__src = jr.as_i(l_y__src)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    let l_transform = jr.as_i(l_transform)
    let l_x__dst = jr.as_i(l_x__dst)
    let l_y__dst = jr.as_i(l_y__dst)
    let l_anchor = jr.as_i(l_anchor)
    jr.JNull
}

fn c1_m9__getrgb(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_argb, l_offset, l_scanlength, l_x, l_y, l_width, l_height, l_image] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_scanlength = jr.as_i(l_scanlength)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m10__setrgb(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_argb, l_offset, l_scanlength, l_x, l_y, l_width, l_height, l_image] = jargs
    let l_offset = jr.as_i(l_offset)
    let l_scanlength = jr.as_i(l_scanlength)
    let l_x = jr.as_i(l_x)
    let l_y = jr.as_i(l_y)
    let l_width = jr.as_i(l_width)
    let l_height = jr.as_i(l_height)
    jr.JNull
}

fn c1_m11__getdata(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_image] = jargs
    jr.get_field(jr.call_static("NullUtil", "getInstance_0", []), "NULL_INT_ARRAY")
}

fn c1_jinit(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.super_init("Object", this, [])
    c1_jfields(this)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "PlatformImage",
        "javax.microedition.lcdui.PlatformImage",
        "Object",
        [],
        False,
        [],
        [],
        [
            jr.Method("getImage_1", ["Object"], False, c1_m1__getimage), 
            jr.Method("getSurfaceWidth_2", ["Object", "int"], False, c1_m2__getsurfacewidth), 
            jr.Method("getSurfaceHeight_2", ["Object", "int"], False, c1_m3__getsurfaceheight), 
            jr.Method("getWidth_2", ["Image", "int"], False, c1_m4__getwidth), 
            jr.Method("getHeight_2", ["Image", "int"], False, c1_m5__getheight), 
            jr.Method("getGraphics_4", ["Object", "int", "int", "Image"], False, c1_m6__getgraphics), 
            jr.Method("drawImage_6", ["Image", "int", "int", "int", "Graphics", "Object"], False, c1_m7__drawimage), 
            jr.Method("drawRegion_10", ["Image", "int", "int", "int", "int", "int", "int", "int", "int", "Graphics"], False, c1_m8__drawregion), 
            jr.Method("getRGB_8", ["intArr", "int", "int", "int", "int", "int", "int", "Image"], False, c1_m9__getrgb), 
            jr.Method("setRGB_8", ["intArr", "int", "int", "int", "int", "int", "int", "Image"], False, c1_m10__setrgb), 
            jr.Method("getData_1", ["Image"], False, c1_m11__getdata), 
            jr.Method("jinit_0", [], False, c1_jinit)],
        c1_jfields,
        c1_jclinit,
    )
}

