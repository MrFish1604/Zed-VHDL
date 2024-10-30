(entity_declaration
    "entity"@name
    name:(identifier)@name)@item

(architecture_body
    "architecture"@name
    name:(identifier)@name
    "of"@context.extra
    entity:(simple_name)@context.extra)@item

(function_body
    [
        "pure"
        "impure"
    ]?@context
    "function"@name
    designator:(identifier)@name
    (function_parameter_clause)@context.extra
    (return)@context.extra)@item

(procedure_body
    "procedure"@name
    designator:(identifier)@name)@item

(process_statement
    "process"@name
    "("?@context
    (sensitivity_list)?@context
    ")"?@context
    "begin")@item

(loop_statement
    [
        (while_loop
            "while"@name
            (conditional_expression)@context.extra)
        (for_loop
            "for"@name
            (parameter_specification)@context.extra)
    ]?
    "loop"@name
    "end"
    "loop")@item

(case_statement
    "case"@name
    (expression)@context.extra)@item

(case_statement_alternative
    "when"@context.extra
    (choices)@context.extra)@item

(component_declaration
    "component"@name
    name:(identifier)@name)@item

(component_instantiation_statement
    (label)@name
    (component_instantiation)@context)@item

(generic_clause
    "generic"@name)@item
(port_clause
    "port"@name)@item
