actions
selectObjectsFields: fields model: model
	| query |
	
	query := 'SELECT {1} FROM {2}' format: { ',' join: fields. model modelName }.

	^ self objectsFromQuery: query
	