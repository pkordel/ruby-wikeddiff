module Wikeddiff
  class AnsiFormatter
    attr_reader :color_stack

    def initialize
      # Stack of color codes
      @color_stack = []
    end
  end
end
