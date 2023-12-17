"
Concrete class that runs the test of its super class in the case of a metamodel implemented with Famix
"
Class {
	#name : #CMMetaFamixClassTest,
	#superclass : #TestCase,
	#traits : 'TCMMetaClassTest',
	#classTraits : 'TCMMetaClassTest classTrait',
	#category : #'Cormas-metamodel-tests'
}

{ #category : #running }
CMMetaFamixClassTest >> cormasClassNamed: aString [

	^ CMMetaClass new
		name: aString ;
		yourself
]

{ #category : #running }
CMMetaFamixClassTest >> newCormasInstanceFor: aCormasClass [

	^ aCormasClass newCormasInstance
]
