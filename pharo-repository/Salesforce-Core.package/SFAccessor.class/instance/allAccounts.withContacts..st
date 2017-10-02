actions-accounts
allAccounts: accountFields withContacts: contactFields
	^ self selectModel: SFAccount fields: accountFields nestedModels: SFContact nestedFields: contactFields