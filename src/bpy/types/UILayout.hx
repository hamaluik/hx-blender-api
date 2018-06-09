package bpy.types;

@:enum abstract Alignment(String) {
    var EXPAND = "EXPAND";
    var LEFT = "LEFT";
    var CENTER = "CENTER";
    var RIGHT = "RIGHT";
}

@:enum abstract OperatorContext(String) {
    var INVOKE_DEFAULT = 'INVOKE_DEFAULT';
    var INVOKE_REGION_WIN = 'INVOKE_REGION_WIN';
    var INVOKE_REGION_CHANNELS = 'INVOKE_REGION_CHANNELS';
    var INVOKE_REGION_PREVIEW = 'INVOKE_REGION_PREVIEW';
    var INVOKE_AREA = 'INVOKE_AREA';
    var INVOKE_SCREEN = 'INVOKE_SCREEN';
    var EXEC_DEFAULT = 'EXEC_DEFAULT';
    var EXEC_REGION_WIN = 'EXEC_REGION_WIN';
    var EXEC_REGION_CHANNELS = 'EXEC_REGION_CHANNELS';
    var EXEC_REGION_PREVIEW = 'EXEC_REGION_PREVIEW';
    var EXEC_AREA = 'EXEC_AREA';
    var EXEC_SCREEN = 'EXEC_SCREEN';
}

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

    // TODO...
}
