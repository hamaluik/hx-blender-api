package bpy.types;

/**
   built-in base class for all classes in bpy.types.
 */
@:native("bpy.types.bpy_struct")
extern class BpyStruct {
    /**
       Returns the memory address which holds a pointer to blenders internal data
       @return Int
     */
    public function as_pointer():Int;

    /**
       Adds driver(s) to the given property
       @param path path to the property to drive, analogous to the fcurve’s data path.
       @param index array index of the property drive. Defaults to -1 for all indices or a single channel if the property is not an array.
       @return bpy.types.FCurve
     */
    public function driver_add(path:String, index:Int=-1):bpy.types.FCurve;

    /**
       Remove driver(s) from the given property
       @param path path to the property to drive, analogous to the fcurve’s data path.
       @param index array index of the property drive. Defaults to -1 for all indices or a single channel if the property is not an array.
       @return Bool
     */
    public function driver_remove(path:String, index:Int=-1):Bool;

    /**
       Returns the value of the custom property assigned to key or default when not found (matches pythons dictionary function of the same name).
       @param key The key associated with the custom property.
       @param def Optional argument for the value to return if key is not found.
       @return Any
     */
    public function get(key:String, def:Any=null):Any;

    /**
       Check if a property is hidden.
     */
    public var is_property_hidden(default, null):Bool;

    /**
       Check if a property is readonly.
     */
    public var is_property_readonly(default, null):Bool;

    /**
       Check if a property is set, use for testing operator properties.
     */
    public var is_property_set(default, null):Bool;

    /**
       Returns the items of this objects custom properties (matches pythons dictionary function of the same name).
       @return Array<Any>
     */
    public function items():Array<Any>;

    /**
       Remove a keyframe from this properties fcurve.
       @param data_path path to the property to remove a key, analogous to the fcurve’s data path.
       @param index array index of the property to remove a key. Defaults to -1 removing all indices or a single channel if the property is not an array.
       @param frame The frame on which the keyframe is deleted, defaulting to the current frame.
       @param group The name of the group the F-Curve should be added to if it doesn’t exist yet.
       @return Bool
     */
    public function keyframe_delete(data_path:String, index:Int=-1, frame:Float=-1, group:String=""):Bool;

    /**
       Insert a keyframe on the property given, adding fcurves and animation data when necessary.
       @param data_path path to the property to key, analogous to the fcurve’s data path.
       @param index array index of the property to key. Defaults to -1 which will key all indices or a single channel if the property is not an array.
       @param frame The frame on which the keyframe is inserted, defaulting to the current frame.
       @param group The name of the group the F-Curve should be added to if it doesn’t exist yet.
       @return Bool
     */
    public function keyframe_insert(data_path:String, index:Int=-1, frame:Float=-1, group:String=""):Bool;

    /**
       Returns the keys of this objects custom properties (matches pythons dictionary function of the same name).
       @return Array<String>
     */
    public function keys():Array<String>;

    /**
       Returns the data path from the ID to this object (string).
       @param property Optional property name which can be used if the path is to a property of this object.
       @return String
     */
    public function path_from_id(property:String=""):String;

    /**
       Returns the property from the path, raise an exception when not found.
       @param path path which this property resolves.
       @param coerce optional argument, when True, the property will be converted into its python representation.
     */
    public function path_resolve(path:String, coerce:Bool=true):Void;

    /**
       Unset a property, will use default value afterward.
       @param property
     */
    public function property_unset(property:String):Void;

    /**
       Return a new instance, this is needed because types such as textures can be changed at runtime.
       @return BpyStruct
     */
    public function type_recast():BpyStruct;

    /**
       Returns the values of this objects custom properties (matches pythons dictionary function of the same name).
       @return Array<Any>
     */
    public function values():Array<Any>;

    /**
       The bpy.types.ID object this datablock is from or None, (not available for all data types)
     */
    public var id_data:Null<bpy.types.ID>;
}