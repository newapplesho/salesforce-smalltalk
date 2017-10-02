restoring
restoreFrom: aDictionary
	aDictionary keysDo: [:key |
		[ self perform: key asSymbol asMutator with: (aDictionary at: key ) ] on: MessageNotUnderstood do:[:ex | ex ].
	].
	