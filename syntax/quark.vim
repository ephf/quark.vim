if exists("b:current_syntax")
	finish
endif

syn keyword Constant null

syn match Number '\v(0[xb]?)?\d+'
syn keyword Boolean true false
syn match Float '\v\d+\.\d+'

syn match Type '\v[uif]\d+>|<[A-Z]\w*|\w{-1,}_[tues]>|\w+\ze::'
syn keyword Type str bool void char uchar ichar usize isize

syn match Ignore '\v<_\w+'

syn match Identifier '\v\.@<=\w+|\w+\ze:[^:]'
syn match Function '\v\w+\ze(\<(\w{-}\s*(:.{-})?,?\s*)*\>)?\('

syn keyword Statement return break continue
syn keyword Conditional if else switch
syn keyword Repeat do while for
syn keyword Label case default
syn match Operator '\v[~!%^&|*+=/-]+'
syn keyword Keyword auto int struct trait const static extern private type import
syn match Keyword '\v\&?self'
syn keyword Exception panic

syn match Delimiter '->'
syn match Delimiter '=>'
syn match Delimiter '\v[\[{()}\]<>.,:?;]'

syn match Operator '>='
syn match Operator '<='

syn match Constant '\v<[A-Z_]{2,}>'

syn match String '\v"(\\.|.){-}"' contains=NONE
syn match Character '\v\'(\\.|.)\'' contains=NONE

syn match Comment '\v//.{-}\n' contains=Todo
syn region Comment start='/\*' end='\*/' keepend contains=Todo
syn keyword Todo contained TODO FIXME XXX NOTE

let b:current_syntax = "quark"
