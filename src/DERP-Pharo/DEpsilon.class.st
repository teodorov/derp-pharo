Class {
	#name : #DEpsilon,
	#superclass : #DExpression,
	#classInstVars : [
		'instance'
	],
	#category : #'DERP-Pharo'
}

{ #category : #'instance creation' }
DEpsilon class >> new [
	instance ifNil: [ instance := super new].
	^instance
]

{ #category : #'as yet unclassified' }
DEpsilon >> nullable [
	^true
]
