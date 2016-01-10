require 'spec_helper'
require 'yard/spec/parsed/description/base'

module YARD
  module Spec
    module Parsed
      module Description
        tags = {
          lib: YARD::Spec::Parsed::Description::Base,
          type: :lib
        }

        RSpec.describe Base, tags do
          subject(:base) { described_class.new(given_describe_call) }

          let :given_describe_call do
            instance_double YARD::Parser::Ruby::AstNode
          end

          let :given_describe_call do
            instance_double YARD::Parser::Ruby::MethodCallNode
          end

          it 'is a YARD::Spec::Parsed::Base' do
            is_expected.to be_a YARD::Spec::Parsed::Base
          end

          describe '#describe_call?' do
            subject(:describe_call?) { base.describe_call? }

            context 'when #ast_node.call? == false' do
              before :example do
                allow(base.ast_node).to receive(:call?).and_return false
              end

              context 'when #ast_node.method_name != describe' do
                before :example do
                  allow(base.ast_node).to receive(:method_name)
                    .and_return 'context'
                end

                it('is false') { is_expected.to be false }
              end

              context 'when #ast_node.method_name == "describe"' do
                before :example do
                  allow(base.ast_node).to receive(:method_name)
                    .and_return 'describe'
                end

                it('is false') { is_expected.to be false }
              end
            end

            context 'when #ast_node.call? == true' do
              before :example do
                allow(base.ast_node).to receive(:call?).and_return true
              end

              context 'when #ast_node.method_name != describe' do
                before :example do
                  allow(base.ast_node).to receive(:method_name)
                    .and_return 'context'
                end

                it('is false') { is_expected.to be false }
              end

              context 'when #ast_node.method_name == "describe"' do
                before :example do
                  allow(base.ast_node).to receive(:method_name)
                    .and_return 'describe'
                end

                it('is true') { is_expected.to be true }
              end
            end
          end

          describe '#must_be_describe_call' do
            subject(:must_be_describe_call) { base.must_be_describe_call }

            context 'when #describe_call? == false' do
              before :example do
                allow(base).to receive(:describe_call?)
                  .and_return false
              end

              it 'calls #errors.add(:ast_node, "not `describe` call")' do
                expect(base.errors).to receive(:add)
                  .with(:ast_node, 'not `describe` call')
                must_be_describe_call
              end
            end

            context 'when #describe_call? == true' do
              before :example do
                allow(base).to receive(:describe_call?)
                  .and_return true
              end

              it 'does not change #errors' do
                expect { must_be_describe_call }.not_to change {
                  base.errors.count
                }
              end
            end
          end

          describe '#valid?' do
            subject(:valid?) { base.valid? }
          end
        end
      end
    end
  end
end
