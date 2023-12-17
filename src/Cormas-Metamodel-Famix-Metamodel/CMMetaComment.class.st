Class {
	#name : #CMMetaComment,
	#superclass : #CMMetaSourcedEntity,
	#traits : 'FamixTComment',
	#classTraits : 'FamixTComment classTrait',
	#category : #'Cormas-Metamodel-Famix-Metamodel-Entities'
}

{ #category : #meta }
CMMetaComment class >> annotation [

	<FMClass: #Comment super: #CMMetaSourcedEntity>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	^ self
]
