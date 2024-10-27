(comment)@comment
(identifier)@variable
designator:(identifier)@function
procedure:(simple_name)@function
(integer_decimal)@number
(character_literal)@string
(string_literal)@string

(type_mark)@type
name:(identifier)@emphasis.strong
at_end:(simple_name)@emphasis.strong
entity:(simple_name)@emphasis
(mode)@keyword

; Match constants
([
    (identifier)
    (simple_name)] @constant
  (#match? @constant "^[A-Z_0-9]*$"))

; Match most used types
((simple_name)@type
    (#match? @type "^(std_logic|std_logic_vector|std_ulogic|std_ulogic_vector|integer|real|boolean|bit|bit_vector|character|string|line|text|time|natural|positive|signed|unsigned)$"))
; Match most used functions
((simple_name)@emphasis.strong
    (#match? @emphasis.strong "^(shift_right|shift_left|rotate_right|rotate_left|to_integer|to_unsigned|to_signed|to_bit|to_bit_vector|to_std_logic|to_std_logic_vector|to_std_ulogic|to_std_ulogic_vector|to_real|to_boolean|to_bit|to_bit_vector|to_character|to_string|to_line|to_text|to_time|to_natural|to_positive|to_signed|to_unsigned|to_bit|to_bit_vector|to_std_logic|to_std_logic_vector|to_std_ulogic|to_std_ulogic_vector|to_real|to_boolean|to_bit|to_bit_vector|to_character|to_string|to_line|to_text|to_time|to_natural|to_positive|to_signed|to_unsigned)$"))

; Highlight "anything(something)" as a function
((ambiguous_name)@function
    (#match? @function "^[a-zA-Z0-9_]*\\(.*\\)$"))

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
    "file"
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
    "severity"
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
    "'"
]@punctuation.special

[
    "("
    ")"
]@punctuation.bracket
