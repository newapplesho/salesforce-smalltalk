actions
login
	| tmp1 tmp2 tmp3 tmp4 |
	tmp1 := self soapAPILoginXmlTemplate
		format:
			{self settings username.
			self settings password.
			self settings securityToken}.
	tmp2 := ZnEntity with: tmp1 type: ZnMimeType textXML.
	tmp3 := self soapAPILoginUri.
	tmp4 := self createRequest.
	tmp4
		method: #POST;
		url: tmp3;
		entity: tmp2.
	tmp4 headers headers at: 'SOAPAction' put: 'login'.
	self client
		request: tmp4;
		execute.
	self readFromLoginResponse: self client response