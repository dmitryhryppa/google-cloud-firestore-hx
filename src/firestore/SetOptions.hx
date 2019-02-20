package firestore;

import haxe.extern.EitherType;

typedef SetOptions = {
	?merge:Bool,
	?mergeFields:Array<EitherType<String, FieldPath>>
}
