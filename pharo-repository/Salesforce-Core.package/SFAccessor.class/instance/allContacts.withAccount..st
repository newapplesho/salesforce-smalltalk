actions-contacts
allContacts: contactFields withAccount: accountFields
	^ self selectModel: SFContact fields: contactFields nestedModel: SFAccount nestedFields: accountFields