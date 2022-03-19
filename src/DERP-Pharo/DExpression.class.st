Class {
	#name : #DExpression,
	#superclass : #Object,
	#category : #'DERP-Pharo'
}

{ #category : #accessing }
DExpression >> delta [
	^ self nullable ifTrue: [ DEpsilon new ] ifFalse: [ DEmpty new ]
]

{ #category : #'as yet unclassified' }
DExpression >> derivative: aToken [
	^DEmpty new.
]

{ #category : #'as yet unclassified' }
DExpression >> nullable [
	^false
]

{ #category : #'as yet unclassified' }
DExpression >> recognizes: aStream [
	aStream atEnd ifTrue: [ ^self nullable ].
	^(self derivative: (aStream next)) recognizes: aStream.
]
