instance-creation
default
	^ default ifNil: [ default := self createClientAndLogin ]