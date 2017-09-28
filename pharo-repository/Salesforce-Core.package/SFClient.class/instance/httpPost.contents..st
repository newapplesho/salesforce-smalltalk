http-method
httpPost: aUri contents: entity
	| request |
	request := self createRequest.
	request method: #POST.
	request url: aUri.
	request entity: entity.
	self client request: request.
	client execute.
	^ client response