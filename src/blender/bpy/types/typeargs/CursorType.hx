package blender.bpy.types.typeargs;

@:enum abstract CursorType(String) {
    var DEFAULT = 'DEFAULT';
    var NONE = 'NONE';
    var WAIT = 'WAIT';
    var CROSSHAIR = 'CROSSHAIR';
    var MOVE_X = 'MOVE_X';
    var MOVE_Y = 'MOVE_Y';
    var KNIFE = 'KNIFE';
    var TEXT = 'TEXT';
    var PAINT_BRUSH = 'PAINT_BRUSH';
    var HAND = 'HAND';
    var SCROLL_X = 'SCROLL_X';
    var SCROLL_Y = 'SCROLL_Y';
    var SCROLL_XY = 'SCROLL_XY';
    var EYEDROPPER = 'EYEDROPPER';
}