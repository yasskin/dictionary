class Word
  attr_reader :entry_word, :definitions

  @@entry_words = []

  def self.clear()
    @@entry_words = []
  end

  def self.contacts()
    @@entry_words
  end

  def initialize(attributes)
    @entry_word = attributes[:entry_word]
    @definitions = []
    @@entry_words.push(self)
  end

end
