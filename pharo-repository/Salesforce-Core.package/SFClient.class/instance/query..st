actions
query: aQueryString
	| url |
	url := self queryUri.
	url queryAt: 'q' put: aQueryString.
	self httpGet: url