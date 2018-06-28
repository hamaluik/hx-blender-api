import blender.bpy.Context;
import blender.bpy.types.Panel;
import blender.bpy.types.typeargs.*;

class HelloWorldPanel extends Panel {
    public static var bl_label = 'Hello World';
    public static var bl_space_type = SpaceType.PROPERTIES;
    public static var bl_region_type = RegionType.WINDOW;
    public static var bl_context = 'scene';

    override public function draw(context:Context):Void {
        var col = layout.column();
        col.label("Hello, world!");
        col.label("What is your name?");
        col.prop(context.scene, "my_name");
    }
}