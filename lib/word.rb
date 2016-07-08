class Word
  attr_reader :word_entry, :definition_entries

  @@word_entries = []

  def self.clear()
    @@word_entries = []
  end

  def self.contacts()
    @@word_entries
  end

  def initialize(attributes)
    @word_entry = attributes[:word_entry]
    @definition_entries = []
    @id = @@word_entries.length + 1
    @@word_entries.push(self)
  end

  def add_definition(definition_entry)
    @definition_entries.push(definition_entry)
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@word_entries.each() do |word|
      if word_entry.id().eq?(id)
        found_word = word
      end
    end
    found_word
  end

end
