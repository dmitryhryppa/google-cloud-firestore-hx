package firestore;

import js.Date;

@:jsRequire('@google-cloud/firestore', 'Timestamp')
extern class Timestamp {
	public var seconds:Float;
	public var nanoseconds:Float;
	public static function fromData (data:Date):Timestamp;
	public static function fromMillis (milliseconds:Float):Timestamp;
	public static function now ():Timestamp;
	public function new (seconds:Float, nanoseconds:Float);
	public function isEqual (other:Dynamic):Bool;
	public function toDate ():Date;
	public function toMillis ():Float;
}
