"
Concrete class that runs the test of its super class in the case of a metamodel implemented with Famix
"
Class {
	#name : #CMFamixClassTest,
	#superclass : #CMClassTest,
	#category : #'Cormas-metamodel-tests'
}

{ #category : #running }
CMFamixClassTest >> cormasClassNamed: aString [

	^CMClass new
		name: aString ;
		yourself
]

{ #category : #running }
CMFamixClassTest >> newCormasInstanceFor: aCormasClass [

	^aCormasClass newCormasInstance
]
