require 'spec_helper'
require 'yard/spec/parser/base'

module YARD
  module Spec
    module Parser
      tags = {
        lib: YARD::Spec::Parser::Base,
        type: :lib
      }

      RSpec.describe Base, tags do
      end
    end
  end
end
