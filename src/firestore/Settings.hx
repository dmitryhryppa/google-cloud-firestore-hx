package firestore;

extern typedef Settings = {
	/**
	 * The project ID from the Google Developer's Console, e.g.
	 * 'grape-spaceship-123'. We will also check the environment variable
	 * GCLOUD_PROJECT for your project ID.  Can be omitted in environments that
	 * support {@link https://cloud.google.com/docs/authentication Application
	 * Default Credentials}
	 */
	?projectId:String,
	/**
	 * Local file containing the Service Account credentials as downloaded from
	 * the Google Developers Console. Can  be omitted in environments that
	 * support {@link https://cloud.google.com/docs/authentication Application
	 * Default Credentials}. To configure Firestore with custom credentials, use
	 * the `credentials` property to provide the `client_email` and
	 * `private_key` of your service account.
	 */
	?keyFilename:String,
	/**
	 * The 'client_email' and 'private_key' properties of the service account
	 * to use with your Firestore project. Can be omitted in environments that
	 * support {@link https://cloud.google.com/docs/authentication Application
	 * Default Credentials}. If your credentials are stored in a JSON file, you
	 * can specify a `keyFilename` instead.
	 */
	?credentials:{
		client_email:String,
		private_key:String
	},
	/**
	 * Enables the use of `Timestamp`s for timestamp fields in
	 * `DocumentSnapshot`s.
	 *
	 * Currently, Firestore returns timestamp fields as `Date` but `Date` only
	 * supports millisecond precision, which leads to truncation and causes
	 * unexpected behavior when using a timestamp from a snapshot as a part
	 * of a subsequent query.
	 *
	 * Setting `timestampsInSnapshots` to true will cause Firestore to return
	 * `Timestamp` values instead of `Date` avoiding this kind of problem. To
	 * make this work you must also change any code that uses `Date` to use
	 * `Timestamp` instead.
	 *
	 * NOTE: in the future `timestampsInSnapshots: true` will become the
	 * default and this option will be removed so you should change your code to
	 * use `Timestamp` now and opt-in to this new behavior as soon as you can.
	 */
	?timestampsInSnapshots:Bool
}
