symbolic versions
stable: spec
	<symbolicVersion: #'stable'>

	"Users should continue to depend on #stable, but it will delegate
	to a specific #release version from now on."
	spec for: #'common' version: #'release-2.5.5'.