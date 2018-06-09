import bpy.Context;
import bpy.types.Panel;

class HelloWorldPanel extends Panel {
    public static var bl_label = 'Turnip';
    public static var bl_space_type = bpy.types.Panel.SpaceType.PROPERTIES;
    public static var bl_region_type = bpy.types.Panel.RegionType.WINDOW;
    public static var bl_context = 'scene';

    override public function draw(context:bpy.Context):Void {
        layout.column();
    }
}