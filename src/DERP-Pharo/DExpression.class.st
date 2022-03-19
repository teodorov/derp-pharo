Class {
	#name : #DExpression,
	#superclass : #Object,
	#category : #'DERP-Pharo'
}

{ #category : #parsers }
DExpression >> , anotherExpression [
	^DConcatenation lhs: self rhs: anotherExpression.
]

{ #category : #visiting }
DExpression >> accept: aVisitor [
	^aVisitor visitExpression: self.
]

{ #category : #parsers }
DExpression >> delta [

	^DNullability exp: self
]

{ #category : #'as yet unclassified' }
DExpression >> derivative: aToken [
	^DEmpty new.
]

{ #category : #'as yet unclassified' }
DExpression >> nullable [
	^false
]

{ #category : #parsers }
DExpression >> optional [
	^self | DEpsilon new.
]

{ #category : #parsers }
DExpression >> plus [
	^self, self star
]

{ #category : #'as yet unclassified' }
DExpression >> recognizes: aStream [
	aStream atEnd ifTrue: [ ^self nullable ].
	^(self derivative: (aStream next)) recognizes: aStream.
]

{ #category : #parsers }
DExpression >> star [
	^DStar exp: self
]

{ #category : #parsers }
DExpression >> | anotherExpression [
	^DUnion lhs: self rhs: anotherExpression.
]
