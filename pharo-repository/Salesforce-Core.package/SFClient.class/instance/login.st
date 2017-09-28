actions
login
	| loginXml entity uri request |
	loginXml := self soapAPILoginXmlTemplate 
		format: {self settings username. self settings password. self settings securityToken.}.
	entity := ZnEntity with: loginXml type: ZnMimeType textXML.

	uri := self soapAPILoginUri.
	request := self createRequest.
	request method: #POST.
	request url: uri.
	request entity: entity.
	request headers headers at: 'SOAPAction' put: 'login'.
	self client request: request.
	self client execute.
	^self readFromLoginResponse: self client response.