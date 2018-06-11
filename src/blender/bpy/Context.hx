package blender.bpy;

import blender.bpy.types.*;

@:pythonImport("bpy", "context")
extern class Context {
    public var scene:Scene;
}