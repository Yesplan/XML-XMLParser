baselines
baseline: spec

	<baseline>

	spec for: #common do: [
		spec baseline: 'BitmapCharacterSet' with: [
			spec
				loads: 'Core';
				repository: 'github://Yesplan/BitmapCharacterSet:3e597264e2bf7f51f2cc143fb4172d49ddef6c2b/src' ].

		spec baseline: 'OrderPreservingDictionary' with: [
			spec
				loads: 'Core';
				repository: 'github://Yesplan/OrderPreservingDictionary:9d3994948987e2c29facdcf4f11dfcfd283da5cf/src' ].

		spec package: 'XML-Parser' with: [
			spec requires: #('BitmapCharacterSet' 'OrderPreservingDictionary') ].
		
		spec group: 'Core' with: #('XML-Parser') ]
