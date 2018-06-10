package blender.macros;

import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.Expr;
using haxe.macro.ExprTools;
import sys.io.File;
import sys.io.FileOutput;

#if (haxe_ver < 4.0)
typedef ObjectField = {
	var field: String;
	var expr: Expr;
}
#end

class PluginGenerator {
    macro public static function generate():Void {
        var mainClass:String = "Main";

        // addon fields
        var name: String = "?";
        var description: String = "?";
        var author: String = "?";
        var version: Array<Int> = [];
        var blender: Array<Int> = [];
        var location: String = "?";
        var warning: String = "?";
        var wiki_url: String = "?";
        var tracker_url: String = "?";
        var support: String = "?";
        var category: String = "?";

        Context.onGenerate(function(types:Array<haxe.macro.Type>) {
            for(type in types) {
                switch(type) {
                    case TInst(t, params): {
                        var c = t.get();
                        if(c.meta.has(":blenderAddon")) {
                            mainClass = c.name;
                            var addonMeta = c.meta.extract(":blenderAddon");
                            for(entry in addonMeta) {
                                for(param in entry.params) {
                                    switch(param.expr) {
                                        case EObjectDecl(fields): {
                                            for(field in fields) {
                                                switch(field.field) {
                                                    case 'name': name = field.expr.getValue();
                                                    case 'description': description = field.expr.getValue();
                                                    case 'author': author = field.expr.getValue();
                                                    case 'version': version = field.expr.getValue();
                                                    case 'blender': blender = field.expr.getValue();
                                                    case 'location': location = field.expr.getValue();
                                                    case 'warning': warning = field.expr.getValue();
                                                    case 'wiki_url': wiki_url = field.expr.getValue();
                                                    case 'tracker_url': tracker_url = field.expr.getValue();
                                                    case 'support': support = field.expr.getValue();
                                                    case 'category': category = field.expr.getValue();
                                                    default: {
                                                        Context.warning("Invalid @:blenderAddon plugin information entry: " + field.field, Context.currentPos());
                                                    }
                                                }
                                            }
                                        }
                                        default: {
                                            Context.warning("Invalid @:blenderAddon metadata entry!", Context.currentPos());
                                        }
                                    }
                                }
                            }
                        }
                    }
                    default: {}
                }
            }
        });

        Context.onAfterGenerate(function() {
            var out:String = Compiler.getOutput();
            var output:FileOutput = File.append(out, false);

            output.writeString([
                '\n',
                'bl_info = {',
                '        "name": "${name}",',
                '        "description": "${description}",',
                '        "author": "${author}",',
                '        "version": (${version.join(', ')}),',
                '        "blender": (${blender.join(', ')}),',
                '        "location": "${location}",',
                '        "warning": "${warning}",',
                '        "wiki_url": "${wiki_url}",',
                '        "tracker_url": "${tracker_url}",',
                '        "support": "${support}",',
                '        "category": "${category}"',
                '}',
                'def register():',
                '    ${mainClass}.register()',
                '',
                'def unregister():',
                '    ${mainClass}.unregister()',
                ''
            ].join("\n"));
            output.close();
        });
    }
}
