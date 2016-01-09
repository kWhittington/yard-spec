require 'yard'
require 'yard/spec/version'

YARD::Templates::Engine.register_template_path(
  Pathname.new(YARD::ROOT).join('..', 'templates_custom'))

module YARD
  # Embeds unit specifications in YARD output.
  module Spec
  end
end
