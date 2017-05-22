# Literal Node of AST (Abstract Syntax Tree)
require 'time'

module Fluent
  module FilterWhere
    class Parser
      class Literal
        attr_reader :text
        attr_reader :val

        def get(record)
          @val
        end
      end

      class BooleanLiteral < Literal
        def initialize(text)
          @text = text
          if text.downcase == 'true'.freeze
            @val = true
          elsif text.downcase == 'false'.freeze
            @val = false
          else
            raise ConfigError.new("\"%s\" is not a Boolean literal" % text)
          end
        end
      end

      class NumberLiteral < Literal
        def initialize(text)
          @text = text
          @val = Float(text)
        end
      end

      class StringLiteral < Literal
        def initialize(text)
          @text = text
          @val = text
        end
      end

      class IdentifierLiteral < Literal
        attr_reader :name

        def initialize(name)
          @name = name
        end

        def get(record)
          record[@name]
        end
      end
    end
  end
end