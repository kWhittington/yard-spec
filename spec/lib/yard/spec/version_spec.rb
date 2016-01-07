require 'spec_helper'
require 'yard/spec/version'

module YARD
  module Spec
    tags = {
      lib: YARD::Spec::VERSION,
      type: :lib
    }

    RSpec.describe VERSION, tags do
      subject(:version) { VERSION }

      it('is "0.1.0"') { is_expected.to eq '0.1.0' }
    end
  end
end
