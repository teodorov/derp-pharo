Class {
	#name : #DNullable,
	#superclass : #DAbstractVisitor,
	#classInstVars : [
		'instance'
	],
	#category : #'DERP-Pharo'
}

{ #category : #'instance creation' }
DNullable class >> new [
	instance ifNil: [ instance := super new].
	^instance
]

{ #category : #visiting }
DNullable >> visitConcatenation: anExpression [
	^(anExpression lhs accept: self) and: [ anExpression rhs accept: self ]
]

{ #category : #visiting }
DNullable >> visitEmpty: anExpression [
	^false
]

{ #category : #visiting }
DNullable >> visitEpsilon: anExpression [
	^true
]

{ #category : #visiting }
DNullable >> visitNullability: anExpression [
	^anExpression exp accept: self
]

{ #category : #visiting }
DNullable >> visitProjection: anExpression [
	^anExpression lang accept: self
]

{ #category : #visiting }
DNullable >> visitStar: anExpression [
	^true
]

{ #category : #visiting }
DNullable >> visitToken: anExpression [
	^false
]

{ #category : #visiting }
DNullable >> visitUnion: anExpression [
	^(anExpression lhs accept: self) or: [ anExpression rhs accept: self ]
]
