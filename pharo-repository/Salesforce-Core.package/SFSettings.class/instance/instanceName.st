accessing
instanceName
	^ self at: #instanceName ifAbsentPut: [ '' ]