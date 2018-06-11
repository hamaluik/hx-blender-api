package blender.bpy.types;

import blender.bpy.types.typeargs.Alignment;
import blender.bpy.types.typeargs.OperatorContext;
import blender.bpy.types.typeargs.IconType;

/**
    User interface layout in a panel or header
 */
extern class UILayout extends BpyStruct {
    public var active:Bool;
    public var alert:Bool;
    public var alignment:Alignment;

    /**
       When false, this (sub)layout is grayed out
     */
    public var enabled:Bool;

    public var operator_context:OperatorContext;

    /**
       Scale factor along the X for items in this (sub)layout
     */
    public var scale_x:Float;

    /**
       Scale factor along the Y for items in this (sub)layout
     */
    public var scale_y:Float;

    /**
       Sub-layout. Items placed in this sublayout are placed next to each other in a row
       @param align Align buttons to each other
       @return UILayout
     */
    public function row(align:Bool=false):UILayout;

    /**
       Sub-layout. Items placed in this sublayout are placed under each other in a column
       @param align Align buttons to each other
       @return UILayout
     */
    public function column(align:Bool=false):UILayout;

    /**
       column_flow
       @param columns Number of columns, 0 is automatic
       @param align Align buttons to each other
       @return UILayout
     */
    public function column_flow(columns:Int=0, align:Bool=false):UILayout;

    /**
       Sublayout (items placed in this sublayout are placed under each other in a column and are surrounded by a box)
       @return UILayout
     */
    public function box():UILayout;

    /**
       split
       @param percentage Percentage, Percentage of width to split at (0.0 - 1.0)
       @param align Align buttons to each other
       @return UILayout
     */
    public function split(percentage:Float=0.0, align:Bool=false):UILayout;

    /**
       Sublayout. Items placed in this sublayout are placed in a radial fashion around the menu center)
       @return UILayout
     */
    public function menu_pie():UILayout;

    /**
       Return the custom icon for this data, use it e.g. to get materials or texture icons
       @param data Data from which to take the icon
       @return String
     */
    public static function icon(data:AnyType):String;

    /**
       Return the UI name for this enum item
       @param data Data from which to take property
       @param property Identifier of property in data
       @param identifier Identifier of the enum item
       @return String
     */
    public static function enum_item_name(data:AnyType, property:String, identifier:String):String;

    /**
       Return the UI description for this enum item
       @param data Data from which to take property
       @param property Identifier of property in data
       @param identifier Identifier of the enum item
       @return String
     */
    public static function enum_item_description(data:AnyType, property:String, identifier:String):String;

    /**
       Return the icon for this enum item
       @param data Data from which to take property
       @param property Identifier of property in data
       @param identifier Identifier of the enum item
       @return String
     */
    public static function enum_item_icon(data:AnyType, property:String, identifier:String):String;

    /**
       Item. Exposes an RNA item and places it into the layout
       @param data Data from which to take property
       @param property Identifier of property in data
       @param text Override automatic text of the item
       @param text_ctxt Override automatic translation context of the given text
       @param translate Translate the given text, when UI translation is enabled
       @param icon Icon, Override automatic icon of the item
       @param expand Expand button to show more detail
       @param slider Use slider widget for numeric values
       @param toggle Use toggle widget for boolean values
       @param icon_only Draw only icons in buttons, no text
       @param event Use button to input key events
       @param full_event Use button to input full events including modifiers
       @param emboss Draw the button itself, just the icon/text
       @param index The index of this button, when set a single member of an array can be accessed, when set to -1 all array members are used
       @param icon_value Icon Value, Override automatic icon of the item
     */
    public function prop(data:AnyType, property:String, text:String="", text_ctxt:String="", translate:Bool=true, icon:IconType=IconType.NONE, expand:Bool=false, slider:Bool=false, toggle:Bool=false, icon_only:Bool=false, event:Bool=false, full_event:Bool=false, emboss:Bool=true, index:Int=-1, icon_value:Int=0):Void;

    /**
       props_enum
       @param data Data from which to take property
       @param property Identifier of property in data
     */
    public function props_enum(data:AnyType, property:String):Void;

    /**
       prop_menu_enum
       @param data Data from which to take property
       @param property Identifier of property in data
       @param text Override automatic text of the item
       @param text_ctxt Override automatic translation context of the given text
       @param translate Translate the given text, when UI translation is enabled
       @param icon Icon, Override automatic icon of the item
     */
    public function prop_menu_enum(data:AnyType, property:String, text:String="", text_ctx:String="", translate:Bool=true, icon:IconType=IconType.NONE):Void;

    /**
       prop_enum
       @param data Data from which to take property
       @param property Identifier of property in data
       @param text Override automatic text of the item
       @param text_ctxt Override automatic translation context of the given text
       @param translate Translate the given text, when UI translation is enabled
       @param icon Icon, Override automatic icon of the item
     */
    public function prop_enum(data:AnyType, property:String, text:String="", text_ctx:String="", translate:Bool=true, icon:IconType=IconType.NONE):Void;

    /**
       prop_search
       @param data Data from which to take property
       @param property Identifier of property in data
       @param search_data Data from which to take collection to search in
       @param search_property Identifier of search collection property
       @param text Override automatic text of the item
       @param text_ctxt Override automatic translation context of the given text
       @param translate Translate the given text, when UI translation is enabled
       @param icon Icon, Override automatic icon of the item
     */
    public function prop_search(data:AnyType, property:String, search_data:AnyType, search_property:String, text:String="", text_ctx:String="", translate:Bool=true, icon:IconType=IconType.NONE):Void;

    /**
       Item. Places a button into the layout to call an Operator
       @param operator Identifier of the operator
       @param text Override automatic text of the item
       @param text_ctx Override automatic translation context of the given text
       @param translate Translate the given text, when UI translation is enabled
       @param icon Icon, Override automatic icon of the item
       @param emboss Draw the button itself, just the icon/text
       @param icon_value Icon Value, Override automatic icon of the item
       @return OperatorProperties
     */
    public function operator(operator:String, text:String="", text_ctx:String="", translate:Bool=true, icon:IconType=IconType.NONE, emboss:Bool=true, icon_value:Int=0):OperatorProperties;

    // TODO...
}
