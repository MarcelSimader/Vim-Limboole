" Vim syntax file for Limboole
" Language: Limboole
" Author:   Marcel Simader (marcel0simader@gmail.com)
" Date:     22.06.2023
" (c) Marcel Simader 2023

" quit when a syntax file was already loaded
if exists('b:current_syntax')
    finish
endif

setlocal iskeyword=<,>,-,\|,&,!,^

" ~~~~~~~~~~~~~~~~~~~~ Syntax ~~~~~~~~~~~~~~~~~~~~

syntax keyword LimbooleOperator   <-> -> <- \| & !
syntax keyword LimbooleIllegal    ^ -
syntax match   LimbooleIdentifier /[-[:alnum:]_\.\[\]\$@]*[[:alnum:]_\.\[\]\$@]/

" ~~~~~~~~~~~~~~~~~~~~ Highlight ~~~~~~~~~~~~~~~~~~~~

highlight default link LimbooleOperator   Statement
highlight default link LimbooleIllegal    Error
highlight default link LimbooleIdentifier Identifier

let b:current_syntax = 'limboole'

