private
createRequest
	| request|
	request := ZnRequest empty.
	self settings sessionId
		ifNotNil: [ 
			request setAuthorization: ('Bearer {1}' format:{ self settings sessionId}). ].
	^ request