require 'spec_helper'
require 'yard/spec/parsed/base'

module YARD
  module Spec
    module Parsed
      tags = {
        lib: YARD::Spec::Parsed::Base,
        type: :lib
      }

      RSpec.describe Base, tags do
        subject(:base) { described_class.new(given_ast_node) }
        let(:given_ast_node) { instance_double YARD::Parser::Ruby::AstNode }

        it 'is an ActiveModel::Model' do
          is_expected.to be_an ActiveModel::Model
        end

        describe '#ast_node' do
          subject(:ast_node) { base.ast_node }

          it 'is the AstNode provided at initialization' do
            is_expected.to be given_ast_node
          end
        end

        describe '#to_ast_node' do
          subject(:to_ast_node) { base.to_ast_node }

          it 'is the AstNode provided at initialization' do
            is_expected.to be given_ast_node
          end
        end
      end
    end
  end
end
