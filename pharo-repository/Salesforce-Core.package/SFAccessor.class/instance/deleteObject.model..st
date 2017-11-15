actions
deleteObject: id model: model
	| url |
	url := ('https://{1}.salesforce.com/services/data/v{2}/sobjects/{3}/{4}'
		format: {self settings instanceName. self settings apiVersion. model modelName. id}) asUrl.
	^ self client httpDelete: url.
	