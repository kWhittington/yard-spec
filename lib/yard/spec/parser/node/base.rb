require 'yard/parser/ruby/ast_node'

module YARD
  module Spec
    module Parser
      module Node
        # YARD::Spec-specific AstNode
        class Base < YARD::Parser::Ruby::AstNode
        end
      end
    end
  end
end
