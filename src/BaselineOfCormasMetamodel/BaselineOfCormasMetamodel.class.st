Class {
	#name : #BaselineOfCormasMetamodel,
	#superclass : #BaselineOf,
	#category : #BaselineOfCormasMetamodel
}

{ #category : #baselines }
BaselineOfCormasMetamodel >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		
		self 
			specForBaselines: spec;
			specForPackages: spec;
			specForGroups: spec ].
]

{ #category : #specs }
BaselineOfCormasMetamodel >> specForBaselines: spec [

	spec
		baseline: 'Cormas'
		with: [ spec loads: 'Core'; repository: 'github://cormas/cormas' ];
		
		baseline: 'Famix'
		with: [ spec repository: 'github://moosetechnology/Famix:development/src' ].
]

{ #category : #specs }
BaselineOfCormasMetamodel >> specForGroups: spec [

	spec
		group: 'default'
		with: #('Cormas-Tests').
]

{ #category : #specs }
BaselineOfCormasMetamodel >> specForPackages: spec [

	spec
		package: 'Cormas-Metamodel'
		with: [ spec requires: #('Cormas') ];
		
		package: 'Cormas-Metamodel-Famix'
		with: [ spec requires: 'Famix' ];
		
		package: 'Cormas-Metamodel-Tests'
		with: [ spec requires: #('Cormas-Metamodel' 'Cormas-Metamodel-Famix') ].
]
