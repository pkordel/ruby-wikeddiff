# TODO: add description from python-wikeddiff

module Wikeddiff
  class Diff
    attr_reader :config, :new_text, :old_text, :symbols, :borders_down,
                :borders_up, :blocks, :max_words, :groups, :sections, :timer,
                :recursion_timer, :error

    def initialize(config)
      @config = config

      # @new_text New text version object with text and token list
      @new_text = nil

      # @old_text Old text version object with text and token list
      @old_text = nil

      # @vsymbols Symbols table for whole text at all refinement levels
      # @symbols = Symbols(token=[], hashTable={}, linked=False)

      # @borders_down Matched region borders downwards
      @borders_down = []

      # @borders_up Matched region borders upwards
      @borders_up = []

      # @blocks Block data (consecutive text tokens) in new text order
      @blocks = []

      # @max_words Maximal detected word count of all linked blocks
      @max_words = 0

      # @groups Section blocks that are consecutive in old text order
      @groups = []

      # @sections Block sections with no block move crosses outside a section
      @sections = []

      # @timer Debug timer array: string 'label' => float milliseconds.
      @timer = {}

      # @recursion_timer Count time spent in recursion level in milliseconds.
      @recursion_timer = {}

      # Output data.

      # @error Unit tests have detected a diff error
      @error = false
    end
  end
end
