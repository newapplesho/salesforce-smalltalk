baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				project: 'XMLParser'
				with: [ spec
						className: 'ConfigurationOfXMLParser';
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main' ].

			spec package: 'Neo-JSON-Core' with: [
				spec 
					repository: 'http://mc.stfx.eu/Neo'. ].

			spec
				package: 'Salesforce-Core'. ].