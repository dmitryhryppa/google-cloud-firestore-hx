package firestore;

import js.Promise;

extern class CollectionReference extends Query {
	public final id:String;
	public final parent:DocumentReference;
	public final path:String;
	public function add (data:Dynamic):Promise<DocumentReference>;
	public function doc (?path:String):DocumentReference;
	public function listDocuments ():Promise<Array<DocumentReference>>;
}
