package firestore;

import js.Promise;

extern class DocumentReference {
	public final firestore:Firestore;
	public final id:String;
	public final parent:CollectionReference;
	public final path:String;
	public function collection(collectionPath:String):CollectionReference;
	public function create(data:Dynamic):Promise<WriteResult>;
	public function delete(?precondition:{?lastUpdateTime:Timestamp}):Promise<WriteResult>;
	public function get():Promise<DocumentSnapshot>;
	public function isEqual(other:Any):Bool;
	public function listCollections():Promise<Array<CollectionReference>>;
	public function onSnapshot(onNext:(snap:DocumentSnapshot) -> Void, ?onError:(err:Dynamic) -> Void):() -> Void;
	public function set(data:Dynamic, ?options:SetOptions):Promise<WriteResult>;
	public function update(dataOrField:Either<Dynamic, String, FieldPath>):Promise<Void>;
}

private abstract Either<T1, T2, T3>(Dynamic) from T1 to T1 from T2 to T2 from T3 to T3 {
}
