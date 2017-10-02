private
objectsFromRawRecords: rawRecords
	^ rawRecords collect: [ :rawRecord |
		self objectFromRawRecord: rawRecord
	].