actions
selectModel: model fields: fields nestedModel: nestedModel nestedFields: nestedFields
	| allFields |
	
	allFields := OrderedCollection new.
	allFields addAll: fields.
	nestedFields do: [ :field |
		allFields add: ('{1}.{2}' format: { nestedModel modelName. field })
	].

	^ self selectObjectsFields: allFields model: model.