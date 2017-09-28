private
readFromLoginResponse: response
	| xmlDocument serverUrl |
	xmlDocument := self readFromResponse: response.
	self settings sessionId: (xmlDocument findElementNamed:'sessionId') contentString.
	serverUrl := (xmlDocument findElementNamed:'serverUrl') contentString.
	self settings instanceName: ((ZnUrl fromString: serverUrl) host findTokens:'.') first.
	^ xmlDocument