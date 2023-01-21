Class {
	#name : #DExpression,
	#superclass : #Object,
	#category : #'DERP-Pharo'
}

{ #category : #parsers }
DExpression >> , anotherExpression [
	^DConcatenation lhs: self rhs: anotherExpression.
]

{ #category : #parsers }
DExpression >> -> aBlock [
	^DProjection new lang: self; projection: aBlock; yourself
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
	^DDerivative language: self token: aToken
]

{ #category : #'as yet unclassified' }
DExpression >> nullable [
	^self accept: (DNullable new).
]

{ #category : #parsers }
DExpression >> optional [
	^self | DEpsilon new.
]

{ #category : #parsing }
DExpression >> parse: aStream [

	aStream atEnd ifTrue: [ 
		^ self nullable
			  ifTrue: [ self accept: DParseNull new ]
			  ifFalse: [ {  } ] ].
	^ (self derivative: aStream next) parse: aStream
]

{ #category : #parsers }
DExpression >> plus [
	^self, self star
]

{ #category : #printing }
DExpression >> printOn: aStream [
	self accept: (DPrinter stream: aStream)
]

{ #category : #parsing }
DExpression >> recognizes: aStream [
	aStream atEnd ifTrue: [ ^self nullable ].
	^(self derivative: aStream next) recognizes: aStream.
]

{ #category : #parsers }
DExpression >> star [
	^DStar exp: self
]

{ #category : #parsers }
DExpression >> | anotherExpression [
	^DUnion lhs: self rhs: anotherExpression.
]
