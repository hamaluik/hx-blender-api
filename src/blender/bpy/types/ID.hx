package blender.bpy.types;

import blender.bpy.types.typeargs.RefreshTag;

/**
   Base type for data-blocks, defining a unique name, linking from other libraries and garbage collection
 */
extern class ID extends BpyStruct {
    /**
       Is this ID block linked indirectly
     */
    public var is_library_indirect(default, null):Bool;

    /**
       Datablock is tagged for recalculation
     */
    public var is_updated(default, null):Bool;

    /**
       Datablock data is tagged for recalculation
     */
    public var is_updated_data(default, null):Bool;

    /**
       Library file the data-block is linked from
     */
    public var library(default, null):Library;

    /**
       Unique data-block ID name
     */
    public var name:String;

    /**
       Preview image and icon of this data-block (None if not supported for this type of data)
     */
    public var preview(default, null):ImagePreview;

    /**
       Tools can use this to tag data for their own purposes (initial state is undefined)
     */
    public var tag:Bool;

    /**
       Save this data-block even if it has no users
     */
    public var use_fake_user:Bool;

    /**
       Number of times this data-block is referenced
     */
    public var users(default, null):Int;

    /**
       Create a copy of this data-block (not supported for all data-blocks)
       @return ID
     */
    public function copy():ID;

    /**
       Clear the user count of a data-block so its not saved, on reload the data will be removed

       This function is for advanced use only, misuse can crash blender since the user count is used to prevent data being removed when it is used.
     */
    public function user_clear():Void;

    /**
       Replace all usage in the .blend file of this ID by new given one
       @param new_id New ID to use
     */
    public function user_remap(new_id:ID):Void;

    /**
       Count the number of times that ID uses/references given one
       @param id ID to count usages
       @return Int
     */
    public function user_of_id(id:ID):Int;

    /**
       Create animation data to this ID, note that not all ID types support this
       @return AnimData
     */
    public function animation_data_create():AnimData;

    /**
       Clear animation on this this ID
     */
    public function animation_data_clear():Void;

    /**
       Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
       @param refresh Type of updates to perform
     */
    public function update_tag(?refresh:RefreshTag):Void;
}