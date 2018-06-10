package blender.bpy.types;

import blender.bpy.types.typeargs.CursorType;

/**
   Open window
 */
extern class Window extends BpyStruct {
    /**
       Window height
     */
    public var height(default, null):Int;

    /**
       Active screen showing in the window
     */
    public var screen:Screen;

    /**
       Settings for stereo 3d display
     */
    public var stereo_3d_display(default, null):Stereo3dDisplay;

    /**
       Window width
     */
    public var width(default, null):Int;

    /**
       Horizontal location of the window
     */
    public var x(default, null):Int;
    /**
       Vertical location of the window
     */
    public var y(default, null):Int;

    /**
       Set the cursor position
       @param x
       @param y
     */
    public function cursor_warp(x:Int, y:Int):Void;

    /**
       Set the cursor
       @param cursor - cursor
     */
    public function cursor_set(cursor:CursorType):Void;

    public function cursor_modal_set(cursor:CursorType):Void;

    /**
       Restore the previous cursor after calling cursor_modal_set
     */
    public function cursor_modal_restore():Void;
}