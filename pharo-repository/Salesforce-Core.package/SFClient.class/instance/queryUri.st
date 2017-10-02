private-uri
queryUri
	^ZnUrl fromString: ('https://{1}.salesforce.com/services/data/{2}/query'
		format: {self settings instanceName. self settings apiVersion}).