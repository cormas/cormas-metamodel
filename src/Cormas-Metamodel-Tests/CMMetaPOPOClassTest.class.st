Class {
	#name : #CMMetaPOPOClassTest,
	#superclass : #TestCase,
	#traits : 'TCMMetaClassTest',
	#classTraits : 'TCMMetaClassTest classTrait',
	#category : #'Cormas-metamodel-tests'
}

{ #category : #running }
CMMetaPOPOClassTest >> classOfInstance: anObject [

	^ anObject class 
]

{ #category : #running }
CMMetaPOPOClassTest >> cormasClassNamed: aString [

	^ CMAgent << aString asSymbol
		traits: { TCMLocated };
		slots: { };
		build
]

{ #category : #running }
CMMetaPOPOClassTest >> instancesOfClass: aClass [

	^ aClass allInstances
]

{ #category : #running }
CMMetaPOPOClassTest >> newCormasInstanceFor: aCormasClass [

	^ aCormasClass new  
]
