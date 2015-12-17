" Vim syntax file
" Language: Emily
" Maintainer: Felicity McCabe <liss@eristiccode.com>
" Latest Revision: 2015 Dec 16

if exists("b:current_syntax")
  finish
endif

syn keyword emilyTodo FIXME NOTE TODO OPTIMIZE XXX HACK contained

" Keywords
syn keyword emilySelf this

syn keyword emilyKeyword has set let parent !id current super
syn keyword emilyKeyword return package project directory internal
syn keyword emilyKeyword nonlocal private exportLet
syn keyword emilyKeyword do nullfn tern not if loop while upto
syn keyword emilyKeyword and or xor check sp ln fail print println
syn keyword emilyKeyword inherit floor ceiling

syn keyword emilyTypes   atom string number int

syn keyword emilyBoolean true null
" Operators

syn keyword emilyOperator and or xor not
syn keyword emilyOperator '=\=='
syn keyword emilyOperator '||'
syn keyword emilyMathOperator + - * / modulus
syn keyword emilyTestOperator < <= > >=

syn keyword emilyLambda ^
syn match emilyFunction '^[a-z]\w*'

syn region emilyString start="\"" end="\""

syn match emilyNumber '\~?(\d+|\d\.\d+?)'

syn match emilyComment '#.*' contains=emilyTodo,@Spell


let b:current_syntax = "emily"

hi def link emilyBoolean      Boolean
hi def link emilyTodo         Todo
hi def link emilyComment      Comment
hi def link emilyLambda       Function
hi def link emilyFunction     Function
hi def link emilyString       String
hi def link emilyKeyword      Keyword
hi def link emilySelf         Keyword
hi def link emilyNumber       Number
hi def link emilyMathOperator Operator
hi def link emilyTestOperator Operator
