" Vim syntax file
" Language: Emily
" Maintainer: Felicity McCabe <liss@eristiccode.com>
" Latest Revision: 2015 Dec 16

if exists("b:current_syntax")
  finish
endif

" Comments
syn keyword emilyTodo FIXME NOTE TODO OPTIMIZE XXX HACK contained
syn match emilyComment '#.*' contains=emilyTodo,@Spell

" Keywords
syn keyword emilySelf this
syn keyword emilyKeyword has set let parent !id current super
syn keyword emilyKeyword return package project directory internal
syn keyword emilyKeyword nonlocal private exportLet
syn keyword emilyKeyword do nullfn tern if loop while upto
syn keyword emilyKeyword check sp ln fail print println
syn keyword emilyKeyword inherit floor ceiling

syn keyword emilyTypes   atom string number int
syn keyword emilyBoolean true null
"
" Operators

syn keyword emilyOperator and or xor not
syn keyword emilyOperator '=\=='
syn keyword emilyOperator '||'
syn keyword emilyMathOperator + - * / modulus
syn keyword emilyTestOperator < <= > >=

syn region emilyString start="\"" end="\""
syn match emilyAtom '\.\s*\w+'
syn match emilyParameters "\^[\s\w]*"

syn match emilyNumber '\~?(\d+|\d\.\d+?)'
syn match emilyNonDecimal "0b[01]+0o[0-7]+|0x[0-9a-fA-F]+|[0-9]+(\.[0-9]+)?(e[0-9]+)?"


let b:current_syntax = "emily"

hi def link emilyBoolean      Boolean
hi def link emilyTodo         Todo
hi def link emilyComment      Comment
hi def link emilyFunction     Function
hi def link emilyString       String
hi def link emilyKeyword      Keyword
hi def link emilySelf         Keyword
hi def link emilyNumber       Number
hi def link emilyNonDecimal   Number

hi def link emilyOperator     Operator
hi def link emilyMathOperator Operator
hi def link emilyTestOperator Operator
