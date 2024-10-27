(comment)@comment
(identifier)@variable
name:(identifier)@function

(integer_decimal)@number
(character_literal)@string
(string_literal)@string

(type_mark)@type
at_end:(simple_name)@function
(mode)@keyword

(descending_range
    "downto"@keyword)
(ascending_range
    "to"@keyword)

(alias_declaration
    "alias"@keyword)

(library_clause
    "library"@keyword
    (logical_name_list
        library:(simple_name)@emphasis))

(use_clause
    "use"@keyword
    (selected_name
        prefix:(selected_name)@emphasis
        suffix:(all)@keyword))

operator:[
    ; logical operators
    "and"
    "or"
    "nand"
    "nor"
    "xor"
    "xnor"
    ; relational operators
    "="
    "/="
    "<"
    "<="
    ">"
    ">="
    ; shift operators
    "sll"
    "srl"
    "sla"
    "sra"
    "rol"
    "ror"
    ; adding operators
    "+"
    "-"
    "&"
    ; multiplying operators
    "*"
    "/"
    "mod"
    "rem"
    ; misc operators
    "**"
    "abs"
    "not"
]@operator

; assignment operators
[
    ":="
    "=>"
    "<="
]@operator

; Structural keywords
[
    "component"
    "port"
    "signal"
    "variable"
    "constant"
    "type"
    "subtype"
    "array"
    "record"
    "access"
    "procedure"
    "function"
    "package"
    "is"
    "entity"
    "architecture"
    "of"
    "begin"
    "end"
]@keyword

; Conditional keywords
[
    "if"
    "then"
    "else"
    "elsif"
    "case"
    "when"
    "others"
]@keyword

; Loop keywords
[
    "loop"
    "while"
    "for"
    "next"
    "exit"
]@keyword

; Misc keyword
[
    "return"
    "report"
    "wait"
    "with"
    "select"
    "postponed"
    "process"
    "generate"
    "block"
    "configuration"
    "pure"
    "impure"
]@keyword


(generic_clause
    "generic"@keyword
    (constant_interface_declaration))

(port_clause
    "port"@keyword)

; Punctuation
[
    "."
    ","
]@punctuation.delimiter

[
    "("
    ")"
]@punctuation.bracket
