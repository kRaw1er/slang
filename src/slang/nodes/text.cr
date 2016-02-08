module Slang
  module Nodes
    class Text < Node

      getter :value, :parent, :column_number

      def initialize(@parent : Node, @value, @column_number = 1)
      end

      def to_s(str, buffer_name)
        str << "#{buffer_name} << \"\n\"\n"
        str << "#{buffer_name} << \"#{indentation}\"\n" if indent?
        str << "#{buffer_name} << (#{value}).to_s(#{buffer_name})\n"
      end

    end
  end
end