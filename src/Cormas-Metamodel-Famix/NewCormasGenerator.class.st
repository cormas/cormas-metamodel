Class {
	#name : #NewCormasGenerator,
	#superclass : #FamixBasicInfrastructureGenerator,
	#instVars : [
		'class',
		'method',
		'action',
		'property',
		'instance',
		'propertyValue'
	],
	#category : #'Cormas-Metamodel-Famix'
}

{ #category : #accessing }
NewCormasGenerator class >> packageName [

	^ #'Cormas-Metamodel-Famix-Metamodel'
]

{ #category : #accessing }
NewCormasGenerator class >> prefix [

	^ #'CMMeta'
]

{ #category : #definition }
NewCormasGenerator >> defineClasses [
	super defineClasses.

	class := builder newClassNamed: #Class.
	method  := builder newClassNamed: #Method.
	action  := builder newClassNamed: #Action.
	property  := builder newClassNamed: #Property.
	instance  := builder newClassNamed: #Instance.
	propertyValue  := builder newClassNamed: #PropertyValue.
]

{ #category : #definition }
NewCormasGenerator >> defineHierarchy [
	super defineHierarchy.

	class --|> namedEntity.
	class --|> #TClass.
	method --|> namedEntity.
	method --|> #TMethod.
	action --|> namedEntity.
	action --|> #TMethod.
	property --|> namedEntity.
	property --|> #TAttribute.
	instance --|> namedEntity.
]

{ #category : #definition }
NewCormasGenerator >> defineRelations [

	super defineRelations.

	(class property: #cormasInstances) <>-* (instance property: #cormasClass).
]
