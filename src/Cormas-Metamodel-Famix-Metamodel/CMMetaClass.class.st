Class {
	#name : #CMMetaClass,
	#superclass : #CMMetaNamedEntity,
	#traits : 'FamixTClass',
	#classTraits : 'FamixTClass classTrait',
	#instVars : [
		'#cormasInstances => FMMany type: #CMMetaInstance opposite: #cormasClass'
	],
	#category : #'Cormas-Metamodel-Famix-Metamodel-Entities'
}

{ #category : #meta }
CMMetaClass class >> annotation [

	<FMClass: #Class super: #CMMetaNamedEntity>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	^ self
]

{ #category : #adding }
CMMetaClass >> addCormasInstance: anObject [
	<generated>
	^ self cormasInstances add: anObject
]

{ #category : #accessing }
CMMetaClass >> cormasInstances [
	"Relation named: #cormasInstances type: #CMMetaInstance opposite: #cormasClass"

	<generated>
	<derived>
	^ cormasInstances
]

{ #category : #accessing }
CMMetaClass >> cormasInstances: anObject [

	<generated>
	cormasInstances value: anObject
]

{ #category : #navigation }
CMMetaClass >> cormasInstancesGroup [
	<generated>
	<navigation: 'CormasInstances'>
	^ MooseSpecializedGroup withAll: self cormasInstances asSet
]
