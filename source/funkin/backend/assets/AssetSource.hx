package funkin.backend.assets;

enum abstract AssetSource(Null<Int>) from Null<Int> to Null<Int> {
    var SOURCE = 0;
    var MODS = 1;
    var BOTH = -1;

    @:from public static function fromString(str:String):AssetSource {
        switch (StringTools.trim(str).toLowerCase()) {
            case "source": return SOURCE;
            case "mods": return MODS;
            case "both": return BOTH;
            default: return MODS;
        }
    }

    @:to public inline function toString():String {
        switch (this) {
            case SOURCE: return "source";
            case MODS: return "mods";
            case BOTH: return "both";
            default: return "mods";
        }
    }
}
