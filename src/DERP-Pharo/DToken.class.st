Class {
	#name : #DToken,
	#superclass : #DExpression,
	#instVars : [
		'token'
	],
	#category : #'DERP-Pharo'
}

{ #category : #accessing }
DToken class >> value: aToken [
	^self new token: aToken.
	
]

{ #category : #'as yet unclassified' }
DToken >> derivative: aToken [

	^ aToken = token
		  ifTrue: [ DEpsilon new ]
		  ifFalse: [ DEmpty new ]
]

{ #category : #accessing }
DToken >> token [

	^ token
]

{ #category : #accessing }
DToken >> token: anObject [

	token := anObject
]
