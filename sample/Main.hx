package;

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
        blender.bpy.Utils.register_class(HelloWorldPanel);
    }

    public static function unregister():Void {
        blender.bpy.Utils.unregister_class(HelloWorldPanel);
    }
}