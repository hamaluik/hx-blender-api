package blender.bpy.types.typeargs;

/**
   Type of updates to perform
 */
@:enum abstract RefreshTag(String) {
    var OBJECT = 'OBJECT';
    var DATA = 'DATA';
    var TIME = 'TIME';
}