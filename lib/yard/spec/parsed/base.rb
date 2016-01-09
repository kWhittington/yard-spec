require 'yard/parser/ruby/ast_node'

module YARD
  module Spec
    module Parsed
      # A component of a specification of an object/module.
      class Base
        attr_reader :ast_node

        def initialize(ast_node)
          @ast_node = ast_node
        end

        def to_ast_node
          ast_node
        end
      end
    end
  end
end
