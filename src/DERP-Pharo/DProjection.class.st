Class {
	#name : #DProjection,
	#superclass : #DExpression,
	#instVars : [
		'lang',
		'projection'
	],
	#category : #'DERP-Pharo'
}

{ #category : #visiting }
DProjection >> accept: aVisitor [
	^aVisitor visitProjection: self.
]

{ #category : #accessing }
DProjection >> lang [

	^ lang
]

{ #category : #accessing }
DProjection >> lang: anObject [

	lang := anObject
]

{ #category : #accessing }
DProjection >> projection [

	^ projection
]

{ #category : #accessing }
DProjection >> projection: anObject [

	projection := anObject
]
