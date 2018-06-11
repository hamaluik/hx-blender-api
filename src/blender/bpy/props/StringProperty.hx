package blender.bpy.props;

import blender.bpy.Context;
import blender.bpy.types.typeargs.StringPropertySubtype;
import blender.bpy.types.typeargs.PropertyOptions;
import python.KwArgs;
import python.Set;

/**
   Named arguments for the string property
*/
typedef StringPropertyArgs = {
    /**
       Name used in the user interface.
    */
    @:optional var name:String;

    /**
       Text used for the tooltip and api documentation.
    */
    @:optional var description:String;

    /**
       maximum length of the string.
    */
    @:optional var maxlen:Int;

    /**
       Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’].
    */
    @:optional var options:Set<PropertyOptions>;

    /**
       Enumerator in [‘FILE_PATH’, ‘DIR_PATH’, ‘FILE_NAME’, ‘BYTE_STRING’, ‘PASSWORD’, ‘NONE’].
    */
    @:optional var subtype:StringPropertySubtype;

    /**
       Function to be called when this value is modified, This function must take 2 values (self, context) and return None. Warning there are no safety checks to avoid infinite recursion.
    */
    @:optional var update:Dynamic->Context->Void;

    /**
       Function to be called when this value is ‘read’, This function must take 1 value (self) and return the value of the property.
    */
    @:optional var get:Dynamic->String;

    /**
       Function to be called when this value is ‘written’, This function must take 2 values (self, value) and return None.
    */
    @:optional var set:Dynamic->String->Void;
}

@:pythonImport("bpy.props", "StringProperty")
extern class StringProperty implements Property {
    public function new(kwargs:KwArgs<StringPropertyArgs>);
}