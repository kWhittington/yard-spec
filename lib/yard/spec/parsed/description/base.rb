require 'yard/spec/parsed/base'

module YARD
  module Spec
    module Parsed
      module Description
        # A description, read from a specification, of a noun.
        class Base < YARD::Spec::Parsed::Base
          def describe_call?
            return false unless ast_node.call?
            return false unless ast_node.method_name == 'describe'
            true
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
