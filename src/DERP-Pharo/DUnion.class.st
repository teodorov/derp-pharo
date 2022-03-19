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

{ #category : #'as yet unclassified' }
DUnion >> derivative: aToken [
	^self class lhs: (self lhs derivative: aToken) rhs: (self rhs derivative: aToken).
]

{ #category : #accessing }
DUnion >> lhs [

	^ lhs
]

{ #category : #accessing }
DUnion >> lhs: anObject [

	lhs := anObject
]

{ #category : #'as yet unclassified' }
DUnion >> nullable [
	^self lhs nullable or: [self rhs nullable]
]

{ #category : #accessing }
DUnion >> rhs [

	^ rhs
]

{ #category : #accessing }
DUnion >> rhs: anObject [

	rhs := anObject
]
