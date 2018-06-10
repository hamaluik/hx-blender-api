package blender.bpy.types;

import blender.bpy.Context;

/**
   Panel containing UI elements.

   Note: blender expects several bl_xxx variables to be statically defined in the class.
   These labels include:

     * bl_category: String
     * bl_context: String
     * bl_idname: String
     * bl_label: String
     * bl_options: PanelOptions
     * bl_region: RegionType
     * bl_space: SpaceType
     * bl_translation_context: String

    TODO: work out a better way to enforce these at compile / checking time
 */
@:pythonImport("bpy.types", "Panel")
extern class Panel extends BpyStruct {
    /**
       Defines the structure of the panel in the UI
     */
    public var layout(default, null):UILayout;

    /**
       XXX todo
     */
    public var test:String;

    /**
       
     */
    public var use_pin:Bool;

    /**
       If this method returns a non-null output, then the panel can be drawn
     */
    public function poll(context:Context):Bool;

    /**
       Draw UI elements into the panel UI layout
     */
    public function draw(context:Context):Void;

    /**
       Draw UI elements into the panel’s header UI layout
     */
    public function draw_header(context:Context):Void;
}