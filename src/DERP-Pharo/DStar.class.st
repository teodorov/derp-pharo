Class {
	#name : #DStar,
	#superclass : #DExpression,
	#instVars : [
		'exp'
	],
	#category : #'DERP-Pharo'
}

{ #category : #accessing }
DStar class >> exp: op [
	^self new exp: op.
	
]

{ #category : #'as yet unclassified' }
DStar >> derivative: aToken [
	^DConcatenation lhs: (self exp derivative: aToken) rhs: (self class exp: self exp).
]

{ #category : #accessing }
DStar >> exp [

	^ exp
]

{ #category : #accessing }
DStar >> exp: anObject [

	exp := anObject
]

{ #category : #'as yet unclassified' }
DStar >> nullable [
	^true
]
