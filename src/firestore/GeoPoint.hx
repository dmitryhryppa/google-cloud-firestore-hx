package firestore;

@:jsRequire('@google-cloud/firestore', 'GeoPoint')
extern class GeoPoint {
	public final latitude:Float;
	public final longitude:Float;
	public function new(latitude:Float, longitude:Float);
	public function isEqual(other:GeoPoint):Bool;
	public function toString():String;
}
