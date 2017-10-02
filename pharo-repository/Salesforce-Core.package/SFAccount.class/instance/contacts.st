accessing
contacts
	^ self propertyAt: (SFContact collectionModelName) ifAbsent: [ { } ]