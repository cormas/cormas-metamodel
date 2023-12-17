Class {
	#name : #CMMetaNamedEntity,
	#superclass : #CMMetaEntity,
	#traits : 'FamixTNamedEntity',
	#classTraits : 'FamixTNamedEntity classTrait',
	#category : #'Cormas-Metamodel-Famix-Metamodel-Entities'
}

{ #category : #meta }
CMMetaNamedEntity class >> annotation [

	<FMClass: #NamedEntity super: #CMMetaEntity>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
CMMetaNamedEntity class >> isAbstract [

	<generated>
	^ self == CMMetaNamedEntity
]
