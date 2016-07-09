require('rspec')
require('word')
require('definition')

describe('Word') do
  before() do
    Word.clear
  end

  describe("Word#initialize") do
    it("should return the name of a newly created word object") do
      new_word = Word.new({name: "Ruby"})
      expect(new_word.name()).to(eq("Ruby"))
    end
  end

  describe('#save') do
    it('saves the word in an array') do
      test_word = Word.new({:name => 'Ruby'})
      expect(test_word.save()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears the array of words') do
      test_word = Word.new({:name => 'Ruby'})
      test_word.save()
      expect(Word.clear()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns an array of all saved words') do
      test_word = Word.new({:name => 'Ruby'})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('#id') do
    it('returns a unique id for a word') do
      test_word1 = Word.new({:name => 'Ruby'})
      test_word1.save()
      test_word2 = Word.new({:name => 'Java'})
      test_word2.save()
      expect(test_word2.id()).to(eq(2))
    end
  end


  describe("Word#definitions") do
    it("should return a definition entry with an array that has two definitions") do
      new_word = Word.new({name: "Ruby"})
      new_word.save()
      new_definition_entry_one = Definition.new({definition_one: "A dynamic, open source programming language with a focus on simplicity and productivity."})
      new_definition_entry_two = Definition.new({definition_one: "Ruby blends parts of other languages (Perl, Smalltalk, Eiffel, Ada, and Lisp) to form a new language that balances functional programming with imperative programming."})
      new_word.add_definition(new_definition_entry_one)
      new_word.add_definition(new_definition_entry_two)
      expect(new_word.definition_entries()).to(eq([new_definition_entry_one, new_definition_entry_two]))
    end
  end

end
