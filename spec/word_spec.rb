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
  #
  # describe("Word#definitions") do
  #   it("should return a definition object") do
  #     new_word = Word.new({entry_word: "Ruby"})
  #     new_definition_entry_one = Definition.new({entry_definition: "A dynamic, open source programming language with a focus on simplicity and productivity."})
  #     expect(new_definition_entry_one.entry_definition()).to(eq("A dynamic, open source programming language with a focus on simplicity and productivity."))
  # end

end
