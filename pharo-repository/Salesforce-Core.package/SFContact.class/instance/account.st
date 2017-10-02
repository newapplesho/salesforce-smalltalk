accessing
account
	^ self at: (SFAccount modelName) ifAbsent: [ nil ]