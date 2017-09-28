accessing
isSandbox
	^ self at: #isSandbox ifAbsentPut: [ false ]