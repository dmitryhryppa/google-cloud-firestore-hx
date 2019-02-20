package firestore;

import js.node.Stream;
import js.Promise;
import haxe.extern.Rest;
import haxe.extern.EitherType;

@:jsRequire('@google-cloud/firestore', 'Query')
extern class Query {
	/**
		The Firestore instance for the Firestore database (useful for performing transactions, etc.).
	 */
	public final firestore:Firestore;

	/**
		A Query refers to a query which you can read or stream from.
		You can also construct refined Query objects by adding filters and ordering.
	 */
	public function new();

	/**
		Creates and returns a new Query that ends at the provided set of field values relative to the order of the query.
		The order of the provided values must match the order of the order by clauses of the query.
		@param fieldValuesOrDocumentSnapshot The snapshot of the document the query results should end at or the field values to end this query at, in order of the query's order by.
		@return A query with the new ending point.
	 */
	public function endAt(fieldValuesOrDocumentSnapshot:EitherType<Rest<Any>, Rest<DocumentSnapshot>>):Query;

	/**
		Creates and returns a new Query that ends before the set of field values relative to the order of the query.
		The order of the provided values must match the order of the order by clauses of the query.
		@param fieldValuesOrDocumentSnapshot The snapshot of the document the query results should end before or the field values to end this query before, in order of the query's order by.
		@return A query with the new ending point.
	 */
	public function endBefore(fieldValuesOrDocumentSnapshot:EitherType<Rest<Any>, Rest<DocumentSnapshot>>):Query;

	/**
		Executes the query and returns the results as a QuerySnapshot.
		@return A Promise that resolves with the results of the Query
	 */
	public function get():Promise<QuerySnapshot>;

	/**
		Returns true if this Query is equal to the provided value.
		@param other The value to compare against.
		@return true if this Query is equal to the provided value.
	 */
	public function isEqual(other:Dynamic):Bool;

	/**
		Creates and returns a new Query that's additionally limited to only return up to the specified number of documents
		@param offset The maximum number of items to return.
		@return The created Query (immutable)
	 */
	public function limit(limit:Float):Query;

	/**
		Specifies the offset of the returned results.
		@param offset The offset to apply to the Query results
		@return The created Query (immutable)
	 */
	public function offset(offset:Float):Query;

	/**
		Attaches a listener for QuerySnapshot events
		@param onNext A callback to be called every time a new QuerySnapshot is available.
		@param onError Optional. A callback to be called if the listen fails or is cancelled. No further callbacks will occur.
		@return An unsubscribe function that can be called to cancel the snapshot listener.
	 */
	public function onSnapshot(onNext:(snap:QuerySnapshot) -> Void, ?onError:(err:Dynamic) -> Void):() -> Void;

	/**
		Creates and returns a new Query that's additionally sorted by the specified field, optionally in descending order instead of ascending.
		@param fieldPath The field to sort by.
		@param directionStr Optional direction to sort by ('asc' or 'desc'). If not specified, order will be ascending.
		@return The created Query (immutable)
	 */
	public function orderBy(fieldPath:EitherType<String, FieldPath>, ?directionStr:String):Query;

	/**
		[Description]
		@param fieldPath
		@param directionStr
		@return The created Query (immutable)
	 */
	public function select(fieldPaths:EitherType<String, FieldPath>):Query;
	public function startAfter(fieldValuesOrDocumentSnapshot:EitherType<Rest<Any>, Rest<DocumentSnapshot>>):Query;
	public function startAt(fieldValuesOrDocumentSnapshot:EitherType<Rest<Any>, Rest<DocumentSnapshot>>):Query;
	public function where(fieldPath:EitherType<String, FieldPath>, opStr:String, value:Any):Query;
}
