accessing
contacts
	^ self at: (SFContact collectionModelName) ifAbsent: [ { } ]