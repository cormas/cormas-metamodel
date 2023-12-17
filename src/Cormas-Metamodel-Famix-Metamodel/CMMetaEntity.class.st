Class {
	#name : #CMMetaEntity,
	#superclass : #MooseEntity,
	#category : #'Cormas-Metamodel-Famix-Metamodel-Entities'
}

{ #category : #meta }
CMMetaEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	<abstract>
	^ self
]

{ #category : #testing }
CMMetaEntity class >> isAbstract [

	<generated>
	^ self == CMMetaEntity
]

{ #category : #meta }
CMMetaEntity class >> metamodel [

	<generated>
	^ CMMetaModel metamodel
]

{ #category : #testing }
CMMetaEntity >> isAttribute [

	<generated>
	^ false
]

{ #category : #testing }
CMMetaEntity >> isBehavioural [

	<generated>
	^ false
]

{ #category : #testing }
CMMetaEntity >> isClass [

	<generated>
	^ false
]

{ #category : #testing }
CMMetaEntity >> isMethod [

	<generated>
	^ false
]

{ #category : #testing }
CMMetaEntity >> isStructuralEntity [

	<generated>
	^ false
]

{ #category : #testing }
CMMetaEntity >> isType [

	<generated>
	^ false
]
