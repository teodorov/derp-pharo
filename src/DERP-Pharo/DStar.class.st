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

{ #category : #visiting }
DStar >> accept: aVisitor [
	^aVisitor visitStar: self.
]

{ #category : #accessing }
DStar >> exp [

	^ exp
]

{ #category : #accessing }
DStar >> exp: anObject [

	exp := anObject
]
