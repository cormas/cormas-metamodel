Trait {
	#name : #TCMMetaClassTest,
	#category : #'Cormas-metamodel-tests'
}

{ #category : #running }
TCMMetaClassTest >> classOfInstance: anObject [

	self explicitRequirement  
]

{ #category : #running }
TCMMetaClassTest >> cormasClassNamed: aString [

	self explicitRequirement  
]

{ #category : #running }
TCMMetaClassTest >> instancesOfClass: aClass [

	self explicitRequirement  
]

{ #category : #running }
TCMMetaClassTest >> newCormasInstanceFor: aCormasClass [

	self explicitRequirement  
]

{ #category : #tests }
TCMMetaClassTest >> testCormasClassKnowsItsInstances [

	| class instance |
	Smalltalk image garbageCollect.
	
	class := self cormasClassNamed: 'Cow'.
	instance := self newCormasInstanceFor: class.

	self assert: (self instancesOfClass: class) size equals: 1.
	self assert: ((self instancesOfClass: class) includes: instance).
]

{ #category : #tests }
TCMMetaClassTest >> testNewCormasClassHasAName [

	| class |
	class := self cormasClassNamed: 'Cow'.

	self assert: class name equals: 'Cow'
]

{ #category : #tests }
TCMMetaClassTest >> testNewCormasClassHasNoInstance [

	| class |
	class := self cormasClassNamed: 'Cow'.

	self assert: (self instancesOfClass: class) size equals: 0
]

{ #category : #tests }
TCMMetaClassTest >> testNewCormasInstanceKnowsItsClass [

	| class instance |
	class := self cormasClassNamed: 'Cow'.
	instance := self newCormasInstanceFor: class.

	self assert: (self classOfInstance: instance) equals: class.

]
