package steamwrap.data;

/**
 * Representation of a SteamItemDetails_t struct
 */
class SteamItem
{
    public var itemInstanceID:String;
    public var itemID:Int;
    public var quantity:Int;
    public var flags:Int;

    public function new(instance:String, id:Int, amount:Int, flag:Int)
    {
        itemInstanceID = instance;
        itemID = id;
        quantity = amount;
        flags = flag;
    }

    public static function fromString(s:String):Array<SteamItem>
    {
        var _steamItems:Array<SteamItem> = new Array();
        var _param_list = s.split(":");
        for(v in _param_list) {
            var _params = v.split(",");
            _steamItems.push(new SteamItem(_params[0], Std.parseInt(_params[1]), Std.parseInt(_params[2]), Std.parseInt(_params[3])));
        }
        return _steamItems;
    }
}
