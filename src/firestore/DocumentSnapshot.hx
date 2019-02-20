package firestore;

import haxe.extern.EitherType;

@:jsRequire('@google-cloud/firestore', 'DocumentSnapshot')
extern class DocumentSnapshot {
	public final createTime:Null<Timestamp>;
	public final exists:Bool;
	public final id:String;
	public final readTime:Timestamp;
	public final ref:DocumentSnapshot;
	public final updateTime:Null<Timestamp>;
	public function data ():Null<Dynamic>;
	public function field (field:EitherType<String, FieldPath>):Dynamic;
	public function isEqual (other:Any):Bool;
}
