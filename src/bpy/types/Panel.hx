package bpy.types;

/**
   Options for this panel type
 */
@:enum abstract PanelOptions(String) {
    /**
       Default Closed, Defines if the panel has to be open or collapsed at the time of its creation.
     */
    var DEFAULT_CLOSED = "DEFAULT_CLOSED";

    /**
       Hide Header, If set to False, the panel shows a header, which contains a clickable arrow to collapse the panel and the label (see bl_label).
     */
    var HIDE_HEADER = "HIDE_HEADER";
}

/**
   The region where the panel is going to be used in
 */
@:enum abstract RegionType(String) {
    var WINDOW = 'WINDOW';
    var HEADER = 'HEADER';
    var CHANNELS = 'CHANNELS';
    var TEMPORARY = 'TEMPORARY';
    var UI = 'UI';
    var TOOLS = 'TOOLS';
    var TOOL_PROPS = 'TOOL_PROPS';
    var PREVIE = 'PREVIEW';
}

/**
   The space where the panel is going to be used in
 */
@:enum abstract SpaceType(String) {
    /**
       Empty.
     */
    var EMPTY = 'EMPTY';

    /**
       3D View, 3D viewport.
     */
    var VIEW_3D = 'VIEW_3D';

    /**
       Timeline, Timeline and playback controls.
     */
    var TIMELINE = 'TIMELINE';

    /**
       Graph Editor, Edit drivers and keyframe interpolation.
     */
    var GRAPH_EDITOR = 'GRAPH_EDITOR';

    /**
       Dope Sheet, Adjust timing of keyframes.
     */
    var DOPESHEET_EDITOR = 'DOPESHEET_EDITOR';

    /**
       NLA Editor, Combine and layer Actions.
     */
    var NLA_EDITOR = 'NLA_EDITOR';

    /**
       UV/Image Editor, View and edit images and UV Maps.
     */
    var IMAGE_EDITOR = 'IMAGE_EDITOR';

    /**
       Video Sequence Editor, Video editing tools.
     */
    var SEQUENCE_EDITOR = 'SEQUENCE_EDITOR';

    /**
       Movie Clip Editor, Motion tracking tools.
     */
    var CLIP_EDITOR = 'CLIP_EDITOR';

    /**
       Text Editor, Edit scripts and in-file documentation.
     */
    var TEXT_EDITOR = 'TEXT_EDITOR';

    /**
       Node Editor, Editor for node-based shading and compositing tools.
     */
    var NODE_EDITOR = 'NODE_EDITOR';

    /**
       Logic Editor, Game logic editing.
     */
    var LOGIC_EDITOR = 'LOGIC_EDITOR';

    /**
       Properties, Edit properties of active object and related data-blocks.
     */
    var PROPERTIES = 'PROPERTIES';

    /**
       Outliner, Overview of scene graph and all available data-blocks.
     */
    var OUTLINER = 'OUTLINER';

    /**
       User Preferences, Edit persistent configuration settings.
     */
    var USER_PREFERENCES = 'USER_PREFERENCES';

    /**
       Info, Main menu bar and list of error messages (drag down to expand and display).
     */
    var INFO = 'INFO';

    /**
       File Browser, Browse for files and assets.
     */
    var FILE_BROWSER = 'FILE_BROWSER';

    /**
       Python Console, Interactive programmatic console for advanced editing and script development.
     */
    var CONSOLE = 'CONSOLE';
}

/**
   Panel containing UI elements
 */
@:pythonImport("bpy.types", "Panel")
extern class Panel extends BpyStruct {
    /**
       
     */
    // TODO: this should actually be a static variable!
    //public var bl_category:String;

    /**
       The context in which the panel belongs to.
     */
    // TODO: this should actually be a static variable!
    //public var bl_context:String;

    /**
       If this is set, the panel gets a custom ID, otherwise it takes the name of the class used to define the panel. For example, if the class name is “OBJECT_PT_hello”, and bl_idname is not set by the script, then bl_idname = “OBJECT_PT_hello”
     */
    // TODO: this should actually be a static variable!
    //public var bl_idname:String;

    /**
       The panel label, shows up in the panel header at the right of the triangle used to collapse the panel
     */
    // TODO: this should actually be a static variable!
    //public var bl_label:String;

    /**
       Options for this panel type
     */
    // TODO: this should actually be a static variable!
    //public var bl_options:PanelOptions;

    /**
       The region where the panel is going to be used in
     */
    // TODO: this should actually be a static variable!
    //public var bl_region_type:RegionType;

    /**
       The space where the panel is going to be used in
     */
    // TODO: this should actually be a static variable!
    //public var bl_space_type:SpaceType;

    /**
       
     */
    // TODO: this should actually be a static variable!
    //public var bl_translation_context:String;

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
    public function poll(context:bpy.Context):Bool;

    /**
       Draw UI elements into the panel UI layout
     */
    public function draw(context:bpy.Context):Void;

    /**
       Draw UI elements into the panel’s header UI layout
     */
    public function draw_header(context:bpy.Context):Void;
}