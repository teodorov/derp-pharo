Class {
	#name : #DNullability,
	#superclass : #DExpression,
	#instVars : [
		'exp'
	],
	#category : #'DERP-Pharo'
}

{ #category : #accessing }
DNullability class >> exp: op [
	^self new exp: op.
]

{ #category : #visiting }
DNullability >> accept: aVisitor [
	^aVisitor visitNullability: self.
]

{ #category : #accessing }
DNullability >> exp [

	^ exp
]

{ #category : #accessing }
DNullability >> exp: anObject [

	exp := anObject
]
