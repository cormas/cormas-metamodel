Class {
	#name : #CMMetaSourcedEntity,
	#superclass : #CMMetaEntity,
	#traits : 'FamixTSourceEntity',
	#classTraits : 'FamixTSourceEntity classTrait',
	#category : #'Cormas-Metamodel-Famix-Metamodel-Entities'
}

{ #category : #meta }
CMMetaSourcedEntity class >> annotation [

	<FMClass: #SourcedEntity super: #CMMetaEntity>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
CMMetaSourcedEntity class >> isAbstract [

	<generated>
	^ self == CMMetaSourcedEntity
]
