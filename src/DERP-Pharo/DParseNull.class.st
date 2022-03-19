Class {
	#name : #DParseNull,
	#superclass : #DAbstractVisitor,
	#instVars : [
		'p'
	],
	#category : #'DERP-Pharo'
}

{ #category : #accessing }
DParseNull >> p [

	^ p
]

{ #category : #accessing }
DParseNull >> p: anObject [

	p := anObject
]

{ #category : #visiting }
DParseNull >> visitConcatenation: anExpression [
	|t1 t2|
	t1 := anExpression lhs accept: self.
	t2 := anExpression rhs accept: self.
	^{t1. t2}
]

{ #category : #visiting }
DParseNull >> visitEmpty: anExpression [
	^{}
]

{ #category : #visiting }
DParseNull >> visitEpsilon: anExpression [
	^anExpression data
]

{ #category : #visiting }
DParseNull >> visitNullability: anExpression [
	^anExpression exp accept: self.
]

{ #category : #visiting }
DParseNull >> visitProjection: anExpression [
	|t|
	t := anExpression lang accept: self.
	^anExpression projection value: t.
]

{ #category : #visiting }
DParseNull >> visitStar: anExpression [
	^#()
]

{ #category : #visiting }
DParseNull >> visitToken: anExpression [
	^{ }
]

{ #category : #visiting }
DParseNull >> visitUnion: anExpression [
	|t1 t2|
	t1 := anExpression lhs accept: self.
	t2 := anExpression rhs accept: self.
	^(OrderedCollection withAll: t1) addAll: t2; yourself.
]
