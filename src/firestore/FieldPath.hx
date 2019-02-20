package firestore;

import haxe.extern.EitherType;
import haxe.extern.Rest;

@:jsRequire('@google-cloud/firestore', 'FieldPath')
extern class FieldPath {
	/**
		A special FieldPath value to refer to the ID of a document. It can be used in queries to sort or filter by the document ID.
	 */
	public static function documentId():FieldPath;
	public function new(segments:EitherType<Rest<String>, Rest<Array<String>>>);

	/**
		@return true if this FieldPath is equal to the provided value.
	 */
	public function isEqual(other:Dynamic):Bool;
}
