package blender.bpy.types.typeargs;

@:enum abstract BoolPropertySubtype(String) {
    var PIXEL = 'PIXEL';
    var UNSIGNED = 'UNSIGNED';
    var PERCENTAGE = 'PERCENTAGE';
    var FACTOR = 'FACTOR';
    var ANGLE = 'ANGLE';
    var TIME = 'TIME';
    var DISTANCE = 'DISTANCE';
    var NONE = 'NONE';
}