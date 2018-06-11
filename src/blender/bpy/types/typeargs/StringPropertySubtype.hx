package blender.bpy.types.typeargs;

@:enum abstract StringPropertySubtype(String) {
    var FILE_PATH = 'FILE_PATH';
    var DIR_PATH = 'DIR_PATH';
    var FILE_NAME = 'FILE_NAME';
    var BYTE_STRING = 'BYTE_STRING';
    var PASSWORD = 'PASSWORD';
    var NONE = 'NONE';
}