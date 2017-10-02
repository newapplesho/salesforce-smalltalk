private-uri
queryUri
	^('https://{1}.salesforce.com/services/data/v{2}/query'
		format: {self settings instanceName. self settings apiVersion}) asUrl.
	