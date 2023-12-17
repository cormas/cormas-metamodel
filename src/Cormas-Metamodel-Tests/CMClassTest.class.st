"
Abstract tests of how a CormasClass should behave
"
Class {
	#name : #CMClassTest,
	#superclass : #TestCase,
	#category : #'Cormas-metamodel-tests'
}

{ #category : #running }
CMClassTest >> cormasClassNamed: aString [

	self subclassResponsibility 
]

{ #category : #running }
CMClassTest >> newCormasInstanceFor: aCormasClass [

	self subclassResponsibility 
]

{ #category : #tests }
CMClassTest >> testCormasClassKnowsItsInstances [

	| class instance |
	class := self cormasClassNamed: 'Cow'.
	instance := self newCormasInstanceFor: class.

	self assert: class cormasInstances size equals: 1.
	self assert: (class cormasInstances includes: instance).
]

{ #category : #tests }
CMClassTest >> testNewCormasClassHasAName [

	| class |
	class := self cormasClassNamed: 'Cow'.

	self assert: class name equals: 'Cow'
]

{ #category : #tests }
CMClassTest >> testNewCormasClassHasNoInstance [

	| class |
	class := self cormasClassNamed: 'Cow'.

	self assert: class cormasInstances size equals: 0
]

{ #category : #tests }
CMClassTest >> testNewCormasInstanceKnowsItsClass [

	| class instance |
	class := self cormasClassNamed: 'Cow'.
	instance := self newCormasInstanceFor: class.

	self assert: instance cormasClass equals: class.

]
