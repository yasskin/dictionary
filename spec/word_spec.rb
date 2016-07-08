require('rspec')
require('word')

describe('Word') do
  before() do
    Word.clear
  end

  describe("Word#initialize") do
    it("should return the name of a newly created word object") do
      new_word = Word.new({word_entry: "Ruby"})
      expect(new_word.word_entry()).to(eq("Ruby"))
    end
  end

  describe("Word#definitions") do
    it("should return a definition entry with an array that has two definitions") do
      new_word = Word.new({entry_word: "Ruby"})
      new_definition_entry_one = Definition.new({entry_definition: "A dynamic, open source programming language with a focus on simplicity and productivity."})
      new_definition_entry_two = Definition.new({entry_definition: "Ruby blends parts of other languages (Perl, Smalltalk, Eiffel, Ada, and Lisp) to form a new language that balances functional programming with imperative programming."})
      new_word.add_definition(new_definition_entry_one)
      new_word.add_definition(new_definition_entry_two)
      expect(new_word.definition_entries()).to(eq([new_definition_entry_one, new_definition_entry_two]))
    end
  end

end
