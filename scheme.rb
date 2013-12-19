require 'treetop'

# Load the Treetop grammar from the 'scheme' file
Treetop.load('./scheme.treetop')

module Scheme
  class Parser
    @@parser = SchemeParser.new

    def self.parse(data)
      # Pass the data over to the parser instance
      tree = @@parser.parse(data)

      # If the AST is nil then there was an error during parsing
      # we need to report a simple error message to help the user
      if(tree.nil?)
        raise Exception, "Parse error at offset: #{@@parser.index}"
      end

      return tree
    end
  end
end
