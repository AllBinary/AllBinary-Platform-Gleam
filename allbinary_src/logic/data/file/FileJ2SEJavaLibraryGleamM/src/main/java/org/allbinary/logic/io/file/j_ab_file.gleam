// Generated Code Do Not Modify
// package org.allbinary.logic.io.file
import jr

pub fn jclasses() -> List(jr.Class) {
    [c1_class()]
}

// class AbFile

fn c1_jfields(this: jr.V) -> jr.V {
    jr.JNull
}

fn c1_jclinit(this: jr.V) -> jr.V {
    jr.set_static("AbFile", "NULL_FILE", jr.call_static("AbFile", "createAbFileFromRawPath_1", [jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]))
    jr.JNull
}

fn c1_m2__createabfilewithchild(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file, l_child_path_name] = jargs
    jr.new("AbFile", [jr.new("File", [jr.call(l_file, "getFile_0", []), l_child_path_name])])
}

fn c1_m3__createabfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
    jr.new("AbFile", [jr.new("File", [jr.call(jr.new("AbPath", [l_file_path, jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]), "toFileSystemString_0", [])])])
}

fn c1_m4__createabfilepathandname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path, l_file_name] = jargs
    jr.new("AbFile", [jr.new("File", [jr.call(jr.new("AbPath", [l_file_path, jr.get_field(jr.call_static("StringUtil", "getInstance_0", []), "EMPTY_STRING")]), "toFileSystemString_0", []), l_file_name])])
}

fn c1_m5__createabfilefromabpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_ab_path] = jargs
    jr.new("AbFile", [jr.new("File", [jr.call(l_ab_path, "toFileSystemString_0", [])])])
}

fn c1_m6__createabfilefromrawpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file_path] = jargs
    jr.new("AbFile", [jr.new("File", [l_file_path])])
}

fn c1_m9__getfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.get_field(this, "file")
}

fn c1_m10__getname(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getName_0", [])
}

fn c1_m11__getparent(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getParent_0", [])
}

fn c1_m12__getparentfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getParentFile_0", [])
}

fn c1_m13__getpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getPath_0", [])
}

fn c1_m14__isabsolute(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "isAbsolute_0", [])
}

fn c1_m15__getabsolutepath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getAbsolutePath_0", [])
}

fn c1_m16__getabsolutefile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getAbsoluteFile_0", [])
}

fn c1_m17__getcanonicalpath(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getCanonicalPath_0", [])
}

fn c1_m18__getcanonicalfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "getCanonicalFile_0", [])
}

fn c1_m19__touri(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "toURI_0", [])
}

fn c1_m20__canread(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "canRead_0", [])
}

fn c1_m21__canwrite(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "canWrite_0", [])
}

fn c1_m22__exists(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "exists_0", [])
}

fn c1_m23__isdirectory(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "isDirectory_0", [])
}

fn c1_m24__isfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "isFile_0", [])
}

fn c1_m25__ishidden(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "isHidden_0", [])
}

fn c1_m26__lastmodified(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.call(jr.get_field(this, "file"), "lastModified_0", []))
}

fn c1_m27__length(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.to_j(jr.call(jr.get_field(this, "file"), "length_0", [])))
}

fn c1_m28__createnewfile(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "createNewFile_0", [])
}

fn c1_m29__delete(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "delete_0", [])
}

fn c1_m30__deleteonexit(this: jr.V, jargs: List(jr.V)) -> jr.V {
        jr.call(jr.get_field(this, "file"), "deleteOnExit_0", [])
    jr.JNull
}

fn c1_m31__list(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "list_0", [])
}

fn c1_m32__listwithfilter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_filter] = jargs
    jr.call(jr.get_field(this, "file"), "list_1", [l_filter])
}

fn c1_m33__listfiles(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "listFiles_0", [])
}

fn c1_m34__listfilesfilenamefilter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_filter] = jargs
    jr.call(jr.get_field(this, "file"), "listFiles_1", [l_filter])
}

fn c1_m35__listfilesfilefilter(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_filter] = jargs
    jr.call(jr.get_field(this, "file"), "listFiles_1", [l_filter])
}

fn c1_m36__mkdir(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "mkdir_0", [])
}

fn c1_m37__mkdirs(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "mkdirs_0", [])
}

fn c1_m38__renameto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_dest] = jargs
    jr.call(jr.get_field(this, "file"), "renameTo_1", [jr.call(l_dest, "getFile_0", [])])
}

fn c1_m39__setlastmodified(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_time] = jargs
    let l_time = jr.as_j(l_time)
    jr.call(jr.get_field(this, "file"), "setLastModified_1", [l_time])
}

fn c1_m40__setreadonly(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "setReadOnly_0", [])
}

fn c1_m41__setwritable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_writable, l_owner_only] = jargs
    jr.call(jr.get_field(this, "file"), "setExecutable_2", [l_writable, l_owner_only])
}

fn c1_m42__setwritable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_writable] = jargs
    jr.call(jr.get_field(this, "file"), "setWritable_1", [l_writable])
}

fn c1_m43__setreadable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_readable, l_owner_only] = jargs
    jr.call(jr.get_field(this, "file"), "setReadable_2", [l_readable, l_owner_only])
}

fn c1_m44__setreadable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_readable] = jargs
    jr.call(jr.get_field(this, "file"), "setReadable_1", [l_readable])
}

fn c1_m45__setexecutable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_executable, l_owner_only] = jargs
    jr.call(jr.get_field(this, "file"), "setExecutable_2", [l_executable, l_owner_only])
}

fn c1_m46__setexecutable(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_executable] = jargs
    jr.call(jr.get_field(this, "file"), "setExecutable_1", [l_executable])
}

fn c1_m47__canexecute(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "canExecute_0", [])
}

fn c1_m48__gettotalspace(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.call(jr.get_field(this, "file"), "getTotalSpace_0", []))
}

fn c1_m49__getfreespace(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.call(jr.get_field(this, "file"), "getFreeSpace_0", []))
}

fn c1_m50__getusablespace(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_j(jr.call(jr.get_field(this, "file"), "getUsableSpace_0", []))
}

fn c1_m51__compareto(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_pathname] = jargs
    jr.as_i(jr.call(jr.get_field(this, "file"), "compareTo_1", [l_pathname]))
}

fn c1_m52__equals(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_obj] = jargs
    jr.call(jr.call_static("TsUtil", "getInstance_0", []), "equalsNotstring_2", [jr.get_field(this, "file"), l_obj])
}

fn c1_m53__hashcode(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.as_i(jr.call(jr.get_field(this, "file"), "hashCode_0", []))
}

fn c1_m54__tostring(this: jr.V, jargs: List(jr.V)) -> jr.V {
    jr.call(jr.get_field(this, "file"), "toString_0", [])
}

fn c1_jinit8(this: jr.V, jargs: List(jr.V)) -> jr.V {
    let assert [l_file] = jargs
    jr.super_init("Object", this, [])
    c1_jfields(this)
        jr.set_field(this, "file", l_file)
    this
}

fn c1_class() -> jr.Class {
    jr.Class(
        "AbFile",
        "org.allbinary.logic.io.file.AbFile",
        "Object",
        ["AbFileInterface"],
        False,
        [#("file", jr.JNull)],
        [#("NULL_FILE", jr.JNull)],
        [
            jr.Method("createAbFileWithChild_2", ["AbFile", "String"], True, c1_m2__createabfilewithchild), 
            jr.Method("createAbFile_1", ["String"], True, c1_m3__createabfile), 
            jr.Method("createAbFilePathAndName_2", ["String", "String"], True, c1_m4__createabfilepathandname), 
            jr.Method("createAbFileFromAbPath_1", ["AbPath"], True, c1_m5__createabfilefromabpath), 
            jr.Method("createAbFileFromRawPath_1", ["String"], True, c1_m6__createabfilefromrawpath), 
            jr.Method("getFile_0", [], False, c1_m9__getfile), 
            jr.Method("getName_0", [], False, c1_m10__getname), 
            jr.Method("getParent_0", [], False, c1_m11__getparent), 
            jr.Method("getParentFile_0", [], False, c1_m12__getparentfile), 
            jr.Method("getPath_0", [], False, c1_m13__getpath), 
            jr.Method("isAbsolute_0", [], False, c1_m14__isabsolute), 
            jr.Method("getAbsolutePath_0", [], False, c1_m15__getabsolutepath), 
            jr.Method("getAbsoluteFile_0", [], False, c1_m16__getabsolutefile), 
            jr.Method("getCanonicalPath_0", [], False, c1_m17__getcanonicalpath), 
            jr.Method("getCanonicalFile_0", [], False, c1_m18__getcanonicalfile), 
            jr.Method("toURI_0", [], False, c1_m19__touri), 
            jr.Method("canRead_0", [], False, c1_m20__canread), 
            jr.Method("canWrite_0", [], False, c1_m21__canwrite), 
            jr.Method("exists_0", [], False, c1_m22__exists), 
            jr.Method("isDirectory_0", [], False, c1_m23__isdirectory), 
            jr.Method("isFile_0", [], False, c1_m24__isfile), 
            jr.Method("isHidden_0", [], False, c1_m25__ishidden), 
            jr.Method("lastModified_0", [], False, c1_m26__lastmodified), 
            jr.Method("length_0", [], False, c1_m27__length), 
            jr.Method("createNewFile_0", [], False, c1_m28__createnewfile), 
            jr.Method("delete_0", [], False, c1_m29__delete), 
            jr.Method("deleteOnExit_0", [], False, c1_m30__deleteonexit), 
            jr.Method("list_0", [], False, c1_m31__list), 
            jr.Method("listWithFilter_1", ["FilenameFilter"], False, c1_m32__listwithfilter), 
            jr.Method("listFiles_0", [], False, c1_m33__listfiles), 
            jr.Method("listFilesFileNameFilter_1", ["FilenameFilter"], False, c1_m34__listfilesfilenamefilter), 
            jr.Method("listFilesFileFilter_1", ["FileFilter"], False, c1_m35__listfilesfilefilter), 
            jr.Method("mkdir_0", [], False, c1_m36__mkdir), 
            jr.Method("mkdirs_0", [], False, c1_m37__mkdirs), 
            jr.Method("renameTo_1", ["AbFile"], False, c1_m38__renameto), 
            jr.Method("setLastModified_1", ["long"], False, c1_m39__setlastmodified), 
            jr.Method("setReadOnly_0", [], False, c1_m40__setreadonly), 
            jr.Method("setWritable_2", ["boolean", "boolean"], False, c1_m41__setwritable), 
            jr.Method("setWritable_1", ["boolean"], False, c1_m42__setwritable), 
            jr.Method("setReadable_2", ["boolean", "boolean"], False, c1_m43__setreadable), 
            jr.Method("setReadable_1", ["boolean"], False, c1_m44__setreadable), 
            jr.Method("setExecutable_2", ["boolean", "boolean"], False, c1_m45__setexecutable), 
            jr.Method("setExecutable_1", ["boolean"], False, c1_m46__setexecutable), 
            jr.Method("canExecute_0", [], False, c1_m47__canexecute), 
            jr.Method("getTotalSpace_0", [], False, c1_m48__gettotalspace), 
            jr.Method("getFreeSpace_0", [], False, c1_m49__getfreespace), 
            jr.Method("getUsableSpace_0", [], False, c1_m50__getusablespace), 
            jr.Method("compareTo_1", ["File"], False, c1_m51__compareto), 
            jr.Method("equals_1", ["Object"], False, c1_m52__equals), 
            jr.Method("hashCode_0", [], False, c1_m53__hashcode), 
            jr.Method("toString_0", [], False, c1_m54__tostring), 
            jr.Method("jinit_1", ["File"], False, c1_jinit8)],
        c1_jfields,
        c1_jclinit,
    )
}

