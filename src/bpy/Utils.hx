package bpy;

/**
   This module contains utility functions specific to blender but not associated with blenders internal data.
 */
@:pythonImport("bpy", "utils")
extern class Utils {
    /**
       Returns a list of paths to external files referenced by the loaded .blend file.
       @param absolute When true the paths returned are made absolute. 
       @param packed When true skip file paths for packed data.
       @param local When true skip linked library paths.
       @return Array<String>
     */
    public static function blend_paths(absolute:Bool=false, packed:Bool=false, local:Bool=false):Array<String>;

    /**
       Simple string escaping function used for animation paths.
       @param string text
       @return String
     */
    public static function escape_identifier(string:String):String;

    /**
       Register a subclass of a blender type in (bpy.types.Panel, bpy.types.UIList, bpy.types.Menu, bpy.types.Header, bpy.types.Operator, bpy.types.KeyingSetInfo, bpy.types.RenderEngine).

       If the class has a register class method it will be called before registration.
       @param cls The class to register
       @throws python.ValueError
     */
    public static function register_class(cls:Class<bpy.types.Panel>):Void;

    // TODO: ...
}