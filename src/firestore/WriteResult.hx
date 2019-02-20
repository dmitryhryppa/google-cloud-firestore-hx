package firestore;

@:jsRequire('@google-cloud/firestore', 'WriteResult')
extern class WriteResult {
	public final writeTime:Timestamp;
	public function isEqual(other:Any):Bool;
}
