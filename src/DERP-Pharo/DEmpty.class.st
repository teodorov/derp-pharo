Class {
	#name : #DEmpty,
	#superclass : #DExpression,
	#classInstVars : [
		'instance'
	],
	#category : #'DERP-Pharo'
}

{ #category : #'instance creation' }
DEmpty class >> new [
	instance ifNil: [ instance := super new].
	^instance
]

{ #category : #visiting }
DEmpty >> accept: aVisitor [
	^aVisitor visitEmpty: self.
]

{ #category : #printing }
DEmpty >> printOn: aStream [
	aStream nextPutAll: '{}'.
]
