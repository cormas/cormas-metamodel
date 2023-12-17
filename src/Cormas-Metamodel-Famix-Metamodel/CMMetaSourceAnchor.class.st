Class {
	#name : #CMMetaSourceAnchor,
	#superclass : #CMMetaEntity,
	#traits : 'FamixTSourceAnchor',
	#classTraits : 'FamixTSourceAnchor classTrait',
	#category : #'Cormas-Metamodel-Famix-Metamodel-Entities'
}

{ #category : #meta }
CMMetaSourceAnchor class >> annotation [

	<FMClass: #SourceAnchor super: #CMMetaEntity>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
CMMetaSourceAnchor class >> isAbstract [

	<generated>
	^ self == CMMetaSourceAnchor
]
