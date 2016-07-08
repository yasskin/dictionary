class Word
  attr_reader(:name, :definition_entries, :id)

  @@word_entries = []

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @definition_entries = []
    @id = @@word_entries.length + 1
  end

  define_method(:save) do
    @@word_entries.push(self)
  end

  define_singleton_method(:clear) do
    @@word_entries = []
  end

  define_singleton_method(:all) do
    @@word_entries
  end

  define_singleton_method(:find) do |id|
    found_word = nil
    @@word_entries.each() do |word|
      if word.id().eq?(id)
        found_word = word
      end
    end
    found_word
  end

  define_method(:add_definition) do |definition|
    @definition_entries.push(definition)
  end

end
