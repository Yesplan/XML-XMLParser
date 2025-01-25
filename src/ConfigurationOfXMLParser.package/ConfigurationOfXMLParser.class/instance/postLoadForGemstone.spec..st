post loading
postLoadForGemstone: aLoader spec: aSpec
	"This forces the GS compatibility package to always be loaded, even if
	it hasn't changed between versions, because it needs to override methods
	in the base. If removed, upgrading on GS may not work."

	| packageName fileName |

	packageName := 'XML-Parser-GemstoneCompatibility'.
	fileName :=
		(aSpec
			packageNamed: packageName
			ifAbsent: [^ self]) file.
	Gofer it
		url: 'http://dev.yesplan.be/gsreplication';
		package: packageName constraint: [:version | version name = fileName];
		load.