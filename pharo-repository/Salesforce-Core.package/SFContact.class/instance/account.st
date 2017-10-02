accessing
account
	^ self propertyAt: (SFAccount modelName) ifAbsent: [ nil ]