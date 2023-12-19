Class {
	#name : #MockECECModelGenerator,
	#superclass : #Object,
	#instVars : [
		'package',
		'modelClass',
		'foragerClass',
		'unrestrainedForagerClass',
		'restrainedForagerClass',
		'cellClass'
	],
	#category : #'Cormas-Metamodel-Tests'
}

{ #category : #'entity names' }
MockECECModelGenerator >> cellClassName [

	^ 'MockECECVegetationUnit'
]

{ #category : #'entity names' }
MockECECModelGenerator >> cellsAccessor [

	^ 'theCells'
]

{ #category : #'creating entities' }
MockECECModelGenerator >> createAllEntities [

	self createPackage.
	self createModelClass.
	self createCellClass.
	self createForagerClass.
	self createUnrestrainedForagerClass.
	self createRestrainedForagerClass.
	self createMethodModelClassInitialize.
	self createMethodModelClassUnrestrainedForagersAccessor.
	self createMethodModelClassRestrainedForagersAccessor.
	self createMethodModelClassCellsAccessor.
]

{ #category : #'creating entities - classes' }
MockECECModelGenerator >> createCellClass [

	package ifNil: [ self createPackage ].

	cellClass := CMSpatialEntityElement << self cellClassName asSymbol
		slots: { #biomass };
		package: package name;
		install.
]

{ #category : #'creating entities - classes' }
MockECECModelGenerator >> createForagerClass [

	package ifNil: [ self createPackage ].

	foragerClass := CMAgent << self foragerClassName asSymbol
		slots: { #energy };
		traits: { TCMLocated };
		package: package name;
		install.
]

{ #category : #'creating entities - methods' }
MockECECModelGenerator >> createMethodInClass: aClass sourceCode: aSourceCode protocol: aProtocol [

	aClass compile: aSourceCode classified: aProtocol
]

{ #category : #'creating entities - methods' }
MockECECModelGenerator >> createMethodModelClassCellsAccessor [

	self
		createMethodInClass: modelClass
		sourceCode: self sourceCodeModelClassCellsAccessor
		protocol: 'accessing'
]

{ #category : #'creating entities - methods' }
MockECECModelGenerator >> createMethodModelClassInitialize [

	self
		createMethodInClass: modelClass
		sourceCode: self sourceCodeModelClassInitialize
		protocol: 'initialization'
]

{ #category : #'creating entities - methods' }
MockECECModelGenerator >> createMethodModelClassRestrainedForagersAccessor [

	self
		createMethodInClass: modelClass
		sourceCode: self sourceCodeModelClassRestrainedForagersAccessor
		protocol: 'accessing'
]

{ #category : #'creating entities - methods' }
MockECECModelGenerator >> createMethodModelClassUnrestrainedForagersAccessor [

	self
		createMethodInClass: modelClass
		sourceCode: self sourceCodeModelClassUnrestrainedForagersAccessor
		protocol: 'accessing'
]

{ #category : #'creating entities - classes' }
MockECECModelGenerator >> createModelClass [

	modelClass := CMAbstractModel << self modelClassName asSymbol
		slots: { #theUnrestrainedForagers . #theRestrainedForagers . #theCells };
		package: package name;
		install.
]

{ #category : #'creating entities - packages' }
MockECECModelGenerator >> createPackage [

	package := self packageName asPackageIfAbsent: [
		self packageOrganizer ensurePackage: self packageName ]
]

{ #category : #'creating entities - classes' }
MockECECModelGenerator >> createRestrainedForagerClass [

	foragerClass ifNil: [ self createForagerClass ].

	restrainedForagerClass := foragerClass << self restrainedForagerClassName asSymbol
		package: package name;
		install.
]

{ #category : #'creating entities - classes' }
MockECECModelGenerator >> createUnrestrainedForagerClass [

	foragerClass ifNil: [ self createForagerClass ].

	unrestrainedForagerClass := foragerClass << self unrestrainedForagerClassName asSymbol
		package: package name;
		install.
]

{ #category : #'entity names' }
MockECECModelGenerator >> foragerClassName [

	^ 'MockECECForager'
]

{ #category : #accessing }
MockECECModelGenerator >> modelClass [

	^ modelClass
]

{ #category : #'entity names' }
MockECECModelGenerator >> modelClassName [

	^ 'MockECECModel'
]

{ #category : #accessing }
MockECECModelGenerator >> package [

	^ package
]

{ #category : #'entity names' }
MockECECModelGenerator >> packageName [

	^ 'Mock-ECEC-Model'
]

{ #category : #'removing entities' }
MockECECModelGenerator >> removeAllGeneratedEntities [

	unrestrainedForagerClass ifNotNil: [ self removeUnrestrainedForagerClass ].
	restrainedForagerClass ifNotNil: [ self removeRestrainedForagerClass ].
	foragerClass ifNotNil: [ self removeForagerClass ].
	cellClass ifNotNil: [ self removeCellClass ].
	modelClass ifNotNil: [ self removeModelClass ].
	package ifNotNil: [ self removePackage ].
]

{ #category : #'removing entities' }
MockECECModelGenerator >> removeCellClass [

	cellClass removeFromSystem
]

{ #category : #'removing entities' }
MockECECModelGenerator >> removeForagerClass [

	foragerClass removeFromSystem
]

{ #category : #'removing entities' }
MockECECModelGenerator >> removeModelClass [

	modelClass removeFromSystem
]

{ #category : #'removing entities' }
MockECECModelGenerator >> removePackage [

	package removeFromSystem 
]

{ #category : #'removing entities' }
MockECECModelGenerator >> removeRestrainedForagerClass [

	restrainedForagerClass removeFromSystem
]

{ #category : #'removing entities' }
MockECECModelGenerator >> removeUnrestrainedForagerClass [

	unrestrainedForagerClass removeFromSystem
]

{ #category : #'entity names' }
MockECECModelGenerator >> restrainedForagerClassName [

	^ 'MockECECRestrainedForager'
]

{ #category : #'entity names' }
MockECECModelGenerator >> restrainedForagersAccessor [

	^ 'theRestrainedForagers'
]

{ #category : #'methods source code' }
MockECECModelGenerator >> sourceCodeModelClassCellsAccessor [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: self cellsAccessor; cr; tab;
			nextPutAll: '<getterFor: #';
			nextPutAll: self cellClassName;
			nextPutAll: '>'; cr; tab;
			nextPutAll: '^ ';
			nextPutAll: self cellsAccessor ]
]

{ #category : #'methods source code' }
MockECECModelGenerator >> sourceCodeModelClassInitialize [

	^ String streamContents: [ :stream | 
		stream
			nextPutAll: 'initialize'; cr; tab;
			nextPutAll: 'super initialize.'; cr; tab;
			nextPutAll: self unrestrainedForagersAccessor;
			nextPutAll: ' := OrderedCollection new.'; cr; tab;
			nextPutAll: self restrainedForagersAccessor;
			nextPutAll: ' := OrderedCollection new.'; cr; tab;
			nextPutAll: self cellsAccessor;
			nextPutAll: ' := OrderedCollection new.'; cr; tab ]
]

{ #category : #'methods source code' }
MockECECModelGenerator >> sourceCodeModelClassRestrainedForagersAccessor [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: self restrainedForagersAccessor; cr; tab;
			nextPutAll: '<getterFor: #';
			nextPutAll: self restrainedForagerClassName;
			nextPutAll: '>'; cr; tab;
			nextPutAll: '^ ';
			nextPutAll: self restrainedForagersAccessor ]
]

{ #category : #'methods source code' }
MockECECModelGenerator >> sourceCodeModelClassUnrestrainedForagersAccessor [

	^ String streamContents: [ :stream |
		stream
			nextPutAll: self unrestrainedForagersAccessor; cr; tab;
			nextPutAll: '<getterFor: #';
			nextPutAll: self unrestrainedForagerClassName;
			nextPutAll: '>'; cr; tab;
			nextPutAll: '^ ';
			nextPutAll: self unrestrainedForagersAccessor ]
]

{ #category : #'entity names' }
MockECECModelGenerator >> unrestrainedForagerClassName [

	^ 'MockECECUnrestrainedForager'
]

{ #category : #'entity names' }
MockECECModelGenerator >> unrestrainedForagersAccessor [

	^ 'theUnrestrainedForagers'
]
