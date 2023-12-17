Class {
	#name : #CMMetaInstance,
	#superclass : #CMMetaNamedEntity,
	#instVars : [
		'#cormasClass => FMOne type: #CMMetaClass opposite: #cormasInstances'
	],
	#category : #'Cormas-Metamodel-Famix-Metamodel-Entities'
}

{ #category : #meta }
CMMetaInstance class >> annotation [

	<FMClass: #Instance super: #CMMetaNamedEntity>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	^ self
]

{ #category : #accessing }
CMMetaInstance >> cormasClass [
	"Relation named: #cormasClass type: #CMMetaClass opposite: #cormasInstances"

	<generated>
	<container>
	^ cormasClass
]

{ #category : #accessing }
CMMetaInstance >> cormasClass: anObject [

	<generated>
	cormasClass := anObject
]

{ #category : #navigation }
CMMetaInstance >> cormasClassGroup [
	<generated>
	<navigation: 'CormasClass'>
	^ MooseSpecializedGroup with: self cormasClass
]
