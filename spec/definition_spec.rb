require('rspec')
require('definition')

describe('Definition') do

  describe('Definition#initialize') do
    it("should return a single definition from a newly created Definition object") do
      new_ruby_definition_one = Definition.new({definition_entry: "A dynamic, open source programming language with a focus on simplicity and productivity."})
      expect(new_ruby_definition_one.definition_entry()).to(eq("A dynamic, open source programming language with a focus on simplicity and productivity."))
    end
  end

end
