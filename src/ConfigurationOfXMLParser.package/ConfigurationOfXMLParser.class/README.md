Loads the XMLParser library and related packages.

The loadable groups are:
	default - XMLParser with tests and XMLWriter.
	Core - XMLParser (but no tests or XMLWriter).
	CoreWithWriting - XMLParser (but no tests) and XMLWriter.

Users should continue to depend on #stable, but it will delegate to a specific #release version from now on:

	(ConfigurationOfXMLParser project version: #stable) load: 'default'