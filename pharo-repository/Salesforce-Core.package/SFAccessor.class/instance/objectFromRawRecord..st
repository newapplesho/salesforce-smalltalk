private
objectFromRawRecord: rawRecord
	| attributes objectClass object |
	attributes := rawRecord at: #attributes ifAbsent: [ Dictionary new ].
	objectClass := self objectClassForType: (attributes at: #type).
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
			object propertyAt: key put: formattedValue.
		]
	].
	^ object.