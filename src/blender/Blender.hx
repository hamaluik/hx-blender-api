package blender;

import blender.bpy.types.BpyStruct;
import blender.bpy.props.Property;

class Blender {
    inline public static function registerProperty(type:Class<BpyStruct>, name:String, property:Property):Void {
        python.lib.Builtins.setattr(type, name, property);
    }

    inline public static function unregisterProperty(type:Class<BpyStruct>, name:String):Void {
        python.lib.Builtins.delattr(type, name);
    }
}