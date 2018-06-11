package blender.bpy.types.typeargs;

@:enum abstract PropertyOptions(String) {
    var HIDDEN = 'HIDDEN';
    var SKIP_SAVE = 'SKIP_SAVE';
    var ANIMATABLE = 'ANIMATABLE';
    var LIBRARY_EDITABLE = 'LIBRARY_EDITABLE';
    var PROPORTIONAL = 'PROPORTIONAL';
    var TEXTEDIT_UPDATE = 'TEXTEDIT_UPDATE';
}