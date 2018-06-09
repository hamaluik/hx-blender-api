package bpy;

@:pythonImport("bpy", "context")
extern class Context {
    public static var window:bpy.types.Window;
}