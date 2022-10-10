Class {
	#name : #DUnion,
	#superclass : #DExpression,
	#instVars : [
		'lhs',
		'rhs'
	],
	#category : #'DERP-Pharo'
}

{ #category : #'as yet unclassified' }
DUnion class >> lhs: lhs rhs: rhs [
	^self new
		lhs: lhs;
		rhs: rhs;
		yourself
]

{ #category : #visiting }
DUnion >> accept: aVisitor [
	^aVisitor visitUnion: self.
]

{ #category : #accessing }
DUnion >> lhs [

	^ lhs
]

{ #category : #accessing }
DUnion >> lhs: anObject [

	lhs := anObject
]

{ #category : #accessing }
DUnion >> rhs [

	^ rhs
]

{ #category : #accessing }
DUnion >> rhs: anObject [

	rhs := anObject
]
