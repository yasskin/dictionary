require('rspec')
require('word')

describe('Word') do
  before() do
    Word.clear
  end

  describe("Word#initialize") do
    it("should return the name of a newly created word object") do
      new_word = Word.new({entry_word: "Ruby"})
      expect(new_word.entry_word()).to(eq("Ruby"))
    end
  end

end
