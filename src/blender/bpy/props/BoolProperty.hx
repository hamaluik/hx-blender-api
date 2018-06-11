package blender.bpy.props;

import blender.bpy.Context;
import blender.bpy.types.typeargs.BoolPropertySubtype;
import blender.bpy.types.typeargs.PropertyOptions;
import python.KwArgs;
import python.Set;

/**
   Named arguments for the string property
*/
typedef BoolPropertyArgs = {
    /**
       Name used in the user interface.
    */
    @:optional var name:String;

    /**
       Text used for the tooltip and api documentation.
    */
    @:optional var description:String;

    /**
       Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’].
    */
    @:optional var options:Set<PropertyOptions>;

    /**
       Enumerator in [‘PIXEL’, ‘UNSIGNED’, ‘PERCENTAGE’, ‘FACTOR’, ‘ANGLE’, ‘TIME’, ‘DISTANCE’, ‘NONE’].
    */
    @:optional var subtype:BoolPropertySubtype;

    /**
       Function to be called when this value is modified, This function must take 2 values (self, context) and return None. Warning there are no safety checks to avoid infinite recursion.
    */
    @:optional var update:Dynamic->Context->Void;

    /**
       Function to be called when this value is ‘read’, This function must take 1 value (self) and return the value of the property.
    */
    @:optional var get:Dynamic->Bool;

    /**
       Function to be called when this value is ‘written’, This function must take 2 values (self, value) and return None.
    */
    @:optional var set:Dynamic->Bool->Void;
}

@:pythonImport("bpy.props", "BoolProperty")
extern class BoolProperty implements Property {
    public function new(kwargs:KwArgs<BoolPropertyArgs>);
}