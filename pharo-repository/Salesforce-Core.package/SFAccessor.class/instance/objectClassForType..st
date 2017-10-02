private
objectClassForType: type
	| ws objectClassName |
	
	ws := '' writeStream.
	ws << 'SF'.
	ws << (type asString).
	objectClassName := ws contents.
	
	^ objectClassName asClass