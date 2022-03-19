Class {
	#name : #DEpsilon,
	#superclass : #DExpression,
	#classInstVars : [
		'instance'
	],
	#category : #'DERP-Pharo'
}

{ #category : #'instance creation' }
DEpsilon class >> new [
	instance ifNil: [ instance := super new].
	^instance
]

{ #category : #visiting }
DEpsilon >> accept: aVisitor [
	^aVisitor visitEpsilon: self.
]

{ #category : #'as yet unclassified' }
DEpsilon >> nullable [
	^true
]

{ #category : #printing }
DEpsilon >> printOn: aStream [
	aStream nextPut: $ε.
]
