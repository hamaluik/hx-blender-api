package blender.bpy.types.typeargs;

/**
   Options for this panel type
 */
@:enum abstract PanelOptions(String) {
    /**
       Default Closed, Defines if the panel has to be open or collapsed at the time of its creation.
     */
    var DEFAULT_CLOSED = "DEFAULT_CLOSED";

    /**
       Hide Header, If set to False, the panel shows a header, which contains a clickable arrow to collapse the panel and the label (see bl_label).
     */
    var HIDE_HEADER = "HIDE_HEADER";
}