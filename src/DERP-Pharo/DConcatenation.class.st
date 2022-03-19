Class {
	#name : #DConcatenation,
	#superclass : #DExpression,
	#instVars : [
		'lhs',
		'rhs'
	],
	#category : #'DERP-Pharo'
}

{ #category : #'as yet unclassified' }
DConcatenation class >> lhs: lhs rhs: rhs [
	^self new
		lhs: lhs;
		rhs: rhs;
		yourself
]

{ #category : #visiting }
DConcatenation >> accept: aVisitor [
	^aVisitor visitConcatenation: self.
]

{ #category : #'as yet unclassified' }
DConcatenation >> derivative: aToken [
	^ DUnion
		  lhs: (self class 
						lhs: (DNullability exp: lhs)
						rhs: (self rhs derivative: aToken))
		  rhs: (self class 
						lhs: (self lhs derivative: aToken) 
						rhs: self rhs)
]

{ #category : #accessing }
DConcatenation >> lhs [

	^ lhs
]

{ #category : #accessing }
DConcatenation >> lhs: anObject [

	lhs := anObject
]

{ #category : #'as yet unclassified' }
DConcatenation >> nullable [
	^self lhs nullable and: [self rhs nullable]
]

{ #category : #printing }
DConcatenation >> printOn: aStream [
	aStream nextPut: $(.
	self lhs printOn: aStream.
	aStream nextPut: $,.
	aStream nextPut: $ .
	self rhs printOn: aStream.
	aStream nextPut: $).
]

{ #category : #accessing }
DConcatenation >> rhs [

	^ rhs
]

{ #category : #accessing }
DConcatenation >> rhs: anObject [

	rhs := anObject
]
