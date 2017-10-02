private
objectFromRawRecord: rawRecord
	| attributes objectType objectClass object |
	attributes := rawRecord at: #attributes ifAbsent: [ Dictionary new ].
	objectType := attributes at: #type ifAbsent: [ ^ rawRecord ].
	objectClass := (self objectClassForType: objectType).
	object := objectClass new.
	rawRecord keysAndValuesDo: [ :key :value |
		key ~= #attributes ifTrue: [
			| formattedValue |
			formattedValue := value.
			(value isKindOf: NeoJSONObject) ifTrue: [
				formattedValue := value at: #records
					ifPresent: [ :subRecords | self objectsFromRawRecords: subRecords ]
					ifAbsent: [ self objectFromRawRecord: value ]
			].
			object at: key put: formattedValue.
		]
	].
	^ object.