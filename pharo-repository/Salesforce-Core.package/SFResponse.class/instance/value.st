accessing
value
	| result exception |
	result := (self response hasEntity and:[ self response contentType sub = 'xml'])
		ifTrue:[ 
			self formatType: 'xml'.
			XMLDOMParser parse: self response contents ]
		ifFalse:[ self response contents ].

	self response isSuccess 
		ifTrue:[ ^ result ].

	exception := self defaultExceptionClass new.
	exception properties: result.
	exception signal.