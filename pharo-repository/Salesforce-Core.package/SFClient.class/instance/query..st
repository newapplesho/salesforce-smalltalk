actions
query: aQueryString
	| url |
	url := ''.
	url := self queryUri.
	url queryAt: 'q' put: aQueryString.
	^ self readFromResponse: (self httpGet: url).