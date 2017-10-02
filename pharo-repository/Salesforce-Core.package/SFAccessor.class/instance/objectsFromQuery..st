actions
objectsFromQuery: query
	| rawResult done rawRecords |
	
	rawResult := self rawQuery: query.
	done := rawResult at: #done ifAbsent: [ false ].
	
	rawRecords := rawResult at: #records ifAbsent: [ {  } ].
	
	^ self objectsFromRawRecords: rawRecords.