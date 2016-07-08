class Word
  attr_reader :word_entry, :definitions

  @@entry_words = []

  def self.clear()
    @@entry_words = []
  end

  def self.contacts()
    @@entry_words
  end

  def initialize(attributes)
    @word_entry = attributes[:word_entry]
    @all_definitions = []
    @@entry_words.push(self)
  end

end
