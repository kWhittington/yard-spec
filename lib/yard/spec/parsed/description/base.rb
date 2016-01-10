require 'yard/spec/parsed/base'

module YARD
  module Spec
    module Parsed
      module Description
        # A description, read from a specification, of a noun.
        class Base < YARD::Spec::Parsed::Base
          def describe_call?
            ast_node.call? && ast_node.method_name == 'describe'
          end

          def must_be_describe_call
            return if describe_call?
            errors.add(:ast_node, 'not `describe` call')
          end
        end
      end
    end
  end
end
