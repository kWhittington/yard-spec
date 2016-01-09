require 'spec_helper'
require 'yard/spec/parsed/description'

module YARD
  module Spec
    module Parsed
      tags = {
        lib: YARD::Spec::Parsed::Description,
        type: :lib
      }

      RSpec.describe Description, tags do
        subject(:description) { described_class.new(given_describe_call) }

        let :given_describe_call do
          instance_double YARD::Parser::Ruby::MethodCallNode
        end

        it 'is a YARD::Spec::Parsed::Base' do
          is_expected.to be_a YARD::Spec::Parsed::Base
        end
      end
    end
  end
end
