Class {
	#name : #DDerivative,
	#superclass : #DAbstractVisitor,
	#instVars : [
		'token'
	],
	#category : #'DERP-Pharo'
}

{ #category : #accessing }
DDerivative class >> language: aLanguage token: aToken [
	^aLanguage accept: (self token: aToken)
]

{ #category : #accessing }
DDerivative class >> token: aToken [
	^self new token: aToken
]

{ #category : #accessing }
DDerivative >> token [

	^ token
]

{ #category : #accessing }
DDerivative >> token: anObject [

	token := anObject
]

{ #category : #visiting }
DDerivative >> visitConcatenation: anExpression [
	^ (anExpression lhs delta, (anExpression rhs accept: self))
	| ((anExpression lhs accept: self), anExpression rhs).
]

{ #category : #visiting }
DDerivative >> visitEmpty: anExpression [
	^DEmpty new
]

{ #category : #visiting }
DDerivative >> visitEpsilon: anExpression [
	^DEmpty new
]

{ #category : #visiting }
DDerivative >> visitNullability: anExpression [
	^DEmpty new
]

{ #category : #visiting }
DDerivative >> visitProjection: anExpression [
	^(anExpression lang accept: self) -> anExpression projection
]

{ #category : #visiting }
DDerivative >> visitStar: anExpression [
	^(anExpression exp accept: self), anExpression
]

{ #category : #visiting }
DDerivative >> visitToken: anExpression [
	^anExpression token = token 
		ifTrue: [ |eps| eps := DEpsilon new. eps data add: token. eps ]
		ifFalse: [ DEmpty new ]
]

{ #category : #visiting }
DDerivative >> visitUnion: anExpression [
	^(anExpression lhs accept: self) | (anExpression rhs accept: self)
]
