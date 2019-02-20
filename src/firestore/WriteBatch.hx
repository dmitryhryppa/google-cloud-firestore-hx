package firestore;

import js.Promise;

@:jsRequire('@google-cloud/firestore', 'WriteBatch')
extern class WriteBatch {
	public function commit():Promise<WriteResult>;
	public function create(documentRef:DocumentReference, data:Dynamic):WriteResult;
	public function delete(documentRef:DocumentReference, ?precondition:{lastUpdateTime:Timestamp}):WriteResult;
	public function set(documentRef:DocumentReference, data:Dynamic, ?options:SetOptions):WriteResult;
}
