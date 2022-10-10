Class {
	#name : #DEpsilon,
	#superclass : #DExpression,
	#instVars : [
		'data'
	],
	#category : #'DERP-Pharo'
}

{ #category : #visiting }
DEpsilon >> accept: aVisitor [
	^aVisitor visitEpsilon: self.
]

{ #category : #accessing }
DEpsilon >> data [

	^ data
]

{ #category : #accessing }
DEpsilon >> data: anObject [

	data := anObject
]

{ #category : #initialization }
DEpsilon >> initialize [ 
	super initialize.
	data := Set new.
]

{ #category : #printing }
DEpsilon >> printOn: aStream [
	aStream nextPut: $ε.
]
