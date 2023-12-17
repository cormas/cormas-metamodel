Extension { #name : #CMMetaClass }

{ #category : #'*Cormas-Metamodel-Famix-Behaviour' }
CMMetaClass >> newCormasInstance [

	| instance |
	instance := CMMetaInstance new.
	instance cormasClass: self.
	^ instance
]
