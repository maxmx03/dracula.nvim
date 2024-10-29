local M = {
  normal = {},
  ellipsis = { link = 'Identifier' },
  separator = { link = 'Keyword' },
  modified = { link = 'DiffChange' },
  dirname = { link = 'Directory' },
  basename = { link = 'Identifier' },
  context = { link = 'Identifier' },
  context_file = { link = 'Identifier' },
  context_module = { link = 'Type' },
  context_namespace = { link = 'Type' },
  context_package = { link = 'Directory' },
  context_class = { link = 'Type' },
  context_method = { link = 'Function' },
  context_property = { link = 'Property' },
  context_field = { link = 'Property' },
  context_constructor = { link = 'Type' },
  context_enum = { link = 'Type' },
  context_interface = { link = 'Type' },
  context_function = { link = 'Function' },
  context_variable = { link = 'Identifier' },
  context_constant = { link = 'Constant' },
  context_string = { link = 'String' },
  context_number = { link = 'Number' },
  context_boolean = { link = 'Boolean' },
  context_array = { link = 'Delimiter' },
  context_object = { link = 'Identifier' },
  context_key = { link = 'Delimiter' },
  context_null = { link = 'Constant' },
  context_enum_member = { link = 'Constant' },
  context_struct = { link = 'Structure' },
  context_event = { link = 'Function' },
  context_operator = { link = 'Operator' },
  context_type_parameter = { link = 'Type' },
}

return M
