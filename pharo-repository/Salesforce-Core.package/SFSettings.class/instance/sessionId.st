accessing
sessionId
	^ self at: #sessionId ifAbsentPut: ['']