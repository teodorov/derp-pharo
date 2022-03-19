Class {
	#name : #DAbstractVisitor,
	#superclass : #Object,
	#category : #'DERP-Pharo'
}

{ #category : #visiting }
DAbstractVisitor >> visitConcatenation: anExpression [
	^self subclassResponsibility 
]

{ #category : #visiting }
DAbstractVisitor >> visitEmpty: anExpression [
	^self subclassResponsibility 
]

{ #category : #visiting }
DAbstractVisitor >> visitEpsilon: anExpression [
	^self subclassResponsibility 
]

{ #category : #visiting }
DAbstractVisitor >> visitExpression: anExpression [
	^self subclassResponsibility 
]

{ #category : #visiting }
DAbstractVisitor >> visitNullability: anExpression [
	^self subclassResponsibility 
]

{ #category : #visiting }
DAbstractVisitor >> visitStar: anExpression [
	^self subclassResponsibility 
]

{ #category : #visiting }
DAbstractVisitor >> visitToken: anExpression [
	^self subclassResponsibility 
]

{ #category : #visiting }
DAbstractVisitor >> visitUnion: anExpression [
	^self subclassResponsibility 
]
