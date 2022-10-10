Class {
	#name : #DPrinter,
	#superclass : #DAbstractVisitor,
	#instVars : [
		'stream'
	],
	#category : #'DERP-Pharo'
}

{ #category : #accessing }
DPrinter class >> stream: aStream [
	^self new stream: aStream; yourself.
]

{ #category : #accessing }
DPrinter >> stream [

	^ stream
]

{ #category : #accessing }
DPrinter >> stream: anObject [

	stream := anObject
]

{ #category : #visiting }
DPrinter >> visitConcatenation: anExpression [
	stream nextPut: $(.
	anExpression lhs accept: self.
	stream nextPut: $,.
	stream nextPut: $ .
	anExpression rhs accept: self.
	stream nextPut: $).
]

{ #category : #visiting }
DPrinter >> visitEmpty: anExpression [
	stream nextPutAll: '{}'
]

{ #category : #visiting }
DPrinter >> visitEpsilon: anExpression [
	stream nextPut: $ε.
]

{ #category : #visiting }
DPrinter >> visitNullability: anExpression [
	anExpression exp accept: self.
	stream nextPutAll: ' delta'.
]

{ #category : #visiting }
DPrinter >> visitProjection: anExpression [
	stream nextPut: $(.
	anExpression lang accept: self.
	stream nextPutAll: '->'.
	anExpression projection printOn: stream. 
	stream nextPut: $).
]

{ #category : #visiting }
DPrinter >> visitStar: anExpression [
	anExpression exp accept: self.
	stream nextPutAll: ' star'.
]

{ #category : #visiting }
DPrinter >> visitToken: anExpression [
	stream nextPut: $(.
	anExpression token printOn: stream.
	stream nextPutAll: ' asDToken)'.
]

{ #category : #visiting }
DPrinter >> visitUnion: anExpression [
	stream nextPut: $(.
	anExpression lhs accept: self.
	stream nextPutAll: ' | '.
	anExpression rhs accept: self.
	stream nextPut: $).
]
