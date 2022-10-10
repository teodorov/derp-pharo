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

{ #category : #accessing }
DConcatenation >> lhs [

	^ lhs
]

{ #category : #accessing }
DConcatenation >> lhs: anObject [

	lhs := anObject
]

{ #category : #accessing }
DConcatenation >> rhs [

	^ rhs
]

{ #category : #accessing }
DConcatenation >> rhs: anObject [

	rhs := anObject
]
