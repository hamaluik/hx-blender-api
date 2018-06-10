package blender.bpy.types.typeargs;

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