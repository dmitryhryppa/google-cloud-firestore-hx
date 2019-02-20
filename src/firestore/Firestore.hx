package firestore;

@:jsRequire('@google-cloud/firestore')
extern class Firestore {
	public function new (settings:Settings);
	public function batch ():WriteBatch;
	public function collection (collectionPath:String):CollectionReference;
	public function doc (documentPath:String):DocumentReference;
}
