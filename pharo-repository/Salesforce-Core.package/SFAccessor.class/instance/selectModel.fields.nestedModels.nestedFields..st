actions
selectModel: model fields: fields nestedModels: nestedModel nestedFields: nestedFields
	| allFields subQuery |
	
	allFields := OrderedCollection new.
	allFields addAll: fields.
	
	subQuery := '(SELECT {1} FROM {2}s)' format: { (',' join: nestedFields). nestedModel modelName }.
	nestedFields collect: [ :field |
		'{1}.{2}' format: { nestedModel modelName. field }
	].
	allFields add: subQuery.

	^ self selectObjectsFields: allFields model: model.