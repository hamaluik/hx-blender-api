package blender.bpy.types.typeargs;

/**
   The region where the panel is going to be used in
 */
@:enum abstract RegionType(String) {
    var WINDOW = 'WINDOW';
    var HEADER = 'HEADER';
    var CHANNELS = 'CHANNELS';
    var TEMPORARY = 'TEMPORARY';
    var UI = 'UI';
    var TOOLS = 'TOOLS';
    var TOOL_PROPS = 'TOOL_PROPS';
    var PREVIE = 'PREVIEW';
}