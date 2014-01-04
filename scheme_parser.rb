require 'treetop'

# Load the Treetop grammar from the 'scheme' file
Treetop.load('./scheme.treetop')

class SchemeParser
  def parse!(data)
    tree = parse(data)

    # If the AST is nil then there was an error during parsing
    # we need to report a simple error message to help the user
    if(tree.nil?)
      raise Exception, "Parse error at offset: #{index}"
    end

    return tree
  end
end
