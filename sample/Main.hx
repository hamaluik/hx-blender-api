package;

import blender.Blender;
import blender.bpy.Utils;
import blender.bpy.props.StringProperty;

@:blenderAddon({
    name: "Hello World Sample",
    description: "Simple hello world demo showcasing the Haxe Blender library",
    author: "Kenton Hamaluik",
    version: [1, 0, 0],
    blender: [2, 78, 0],
    location: "Properties > Scene",
    warning: "Serves no real purpose!",
    wiki_url: "https://github.com/FuzzyWuzzie/hx-blender-api",
    tracker_url: "https://github.com/FuzzyWuzzie/hx-blender-api/issues",
    support: "COMMUNITY",
    category: "Tool"
})
class Main {
    public static function main() {
        register();
    }

    public static function register():Void {
        Utils.register_class(HelloWorldPanel);
        Blender.registerProperty(blender.bpy.types.Scene, "my_name", new StringProperty({
            name: "My Name",
            description: "Your name!"
        }));
    }

    public static function unregister():Void {
        Utils.unregister_class(HelloWorldPanel);
    }
}