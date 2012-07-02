" Vim syntax file
" Language:      Io
" Maintainer:    Lee-Jon Ball <leejonball@gmail.com>
" URL:           https://github.com/lee-jon/vimio

" Operators and Assignment
syn match ioOperator "?\|@\|@@\|**\|[%*/+-]\|<<\|>>\|<\|<=\|>\|>=\|!=\|==\|[&^|]\|&&\|||\|..\|%=\|&=\|*=\|+=\|-=\|/=\|<<=\|>>=\|^=\||="
syn match ioAssignment "::=\|:=\|="

hi def link ioOperator       Operator
hi def link ioAssignment     ioOperator

let b:current_syntax = "io"
