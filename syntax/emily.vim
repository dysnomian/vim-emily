" Vim syntax file
" Language: Emily
" Maintainer: Felicity McCabe <liss@eristiccode.com>
" Latest Revision: 2015 Dec 16

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword emilyKeywords has set let parent !id current this super
syn keyword emilyKeywords return package project directory internal
syn keyword emilyKeywords nonlocal private exportLet

syn keyword emilyMathKeywords + - * / modulus floor
syn keyword emilyTestKeywords < <= > >=

syn region emilyString start="\"" end="\""
