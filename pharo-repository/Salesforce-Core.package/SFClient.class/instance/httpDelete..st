http-method
httpDelete: aUri
	| request |
	request := self createRequest.
	request method: #DELETE.
	request url: aUri.
	self client request: request.
	client execute.
	^ client response.