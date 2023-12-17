"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.
"
Trait {
	#name : #CMMetaTEntityCreator,
	#category : #'Cormas-Metamodel-Famix-Metamodel-Model'
}

{ #category : #meta }
CMMetaTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'Cormas-Metamodel-Famix-Metamodel'>
	<generated>
	^ self
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newAction [

	<generated>
	^ self add: CMMetaAction new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newActionNamed: aName [

	<generated>
	^ self add: (CMMetaAction named: aName)
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newClass [

	<generated>
	^ self add: CMMetaClass new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newClassNamed: aName [

	<generated>
	^ self add: (CMMetaClass named: aName)
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newComment [

	<generated>
	^ self add: CMMetaComment new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newInstance [

	<generated>
	^ self add: CMMetaInstance new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newMethod [

	<generated>
	^ self add: CMMetaMethod new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newMethodNamed: aName [

	<generated>
	^ self add: (CMMetaMethod named: aName)
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newProperty [

	<generated>
	^ self add: CMMetaProperty new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newPropertyNamed: aName [

	<generated>
	^ self add: (CMMetaProperty named: aName)
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newPropertyValue [

	<generated>
	^ self add: CMMetaPropertyValue new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newSourceLanguage [

	<generated>
	^ self add: CMMetaSourceLanguage new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newSourceTextAnchor [

	<generated>
	^ self add: CMMetaSourceTextAnchor new
]

{ #category : #'entity creation' }
CMMetaTEntityCreator >> newUnknownSourceLanguage [

	<generated>
	^ self add: CMMetaUnknownSourceLanguage new
]
