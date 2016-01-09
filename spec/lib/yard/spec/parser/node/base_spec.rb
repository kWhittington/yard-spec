require 'spec_helper'
require 'yard/spec/parser/node/base'

module YARD
  module Spec
    module Parser
      module Node
        tags = {
          lib: YARD::Spec::Parser::Node::Base,
          type: :lib
        }

        RSpec.describe Base, tags do
          subject(:base) { described_class.new }
        end
      end
    end
  end
end
