Class {
	#name : #CMMetaModel,
	#superclass : #MooseModel,
	#traits : 'CMMetaTEntityCreator',
	#classTraits : 'CMMetaTEntityCreator classTrait',
	#category : #'Cormas-Metamodel-Famix-Metamodel-Model'
}

{ #category : #accessing }
CMMetaModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits')
]

{ #category : #meta }
CMMetaModel class >> annotation [
	<FMClass: #CMMetaModel super: #MooseModel>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
]
