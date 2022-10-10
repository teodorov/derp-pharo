Class {
	#name : #DParseNull,
	#superclass : #DAbstractVisitor,
	#category : #'DERP-Pharo'
}

{ #category : #visiting }
DParseNull >> visitConcatenation: anExpression [
	|set1 set2 result|
	set1 := anExpression lhs accept: self.
	set2 := anExpression rhs accept: self.
	result := Set new.
	set1 do: [ :o1 | set2 do: [ :o2 |  result add: {o1. o2}] ].
	^result
]

{ #category : #visiting }
DParseNull >> visitEmpty: anExpression [
	^Set new.
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

	^ ((anExpression lang accept: self) collect: [ :each | 
		   anExpression projection value: each ]) asSet
]

{ #category : #visiting }
DParseNull >> visitStar: anExpression [
	^Set with: nil
]

{ #category : #visiting }
DParseNull >> visitToken: anExpression [
	^Set new.
]

{ #category : #visiting }
DParseNull >> visitUnion: anExpression [
	|t1 t2|
	t1 := anExpression lhs accept: self.
	t2 := anExpression rhs accept: self.
	^t1 union: t2
]
