private-uri
soapAPILoginUri
	| loginSubDomain |
	loginSubDomain := self settings isSandbox ifTrue:['test'] ifFalse:['login'].
	^'https://{1}.salesforce.com/services/Soap/u/{2}'
		format: {loginSubDomain. self settings apiVersion}.