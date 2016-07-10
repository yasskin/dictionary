require('rspec')
require('definition')

describe('Definition') do

  before() do
    Definition.clear()
  end

  after() do
    Definition.clear()
  end

  describe('Definition#initialize') do
    it("should return a single definition from a newly created Definition object") do
      new_ruby_definition_one = Definition.new({definition_one: "A dynamic, open source programming language with a focus on simplicity and productivity."})
      expect(new_ruby_definition_one.definition_one()).to(eq("A dynamic, open source programming language with a focus on simplicity and productivity."))
    end
  end

  describe('#save') do
    it('saves one definition into an array') do
      new_definition = Definition.new({:definition_one => 'A dynamic, open source programming language with a focus on simplicity and productivity.'})
      expect(new_definition.save()).to(eq([new_definition]))
    end
  end

  describe('.all') do
    it('returns all saved definitions') do
      new_definition = Definition.new({:definition_one => 'A dynamic, open source programming language with a focus on simplicity and productivity.'})
      new_definition.save()
      expect(Definition.all()).to(eq([new_definition]))
    end
  end

  describe('.clear') do
    it('clears the definitions from the array') do
      new_definition = Definition.new({:definition_one => 'A dynamic, open source programming language with a focus on simplicity and productivity.'})
      new_definition.save()
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns a unique id for each new definition') do
      new_definition_one = Definition.new({:definition_one => 'A dynamic, open source programming language with a focus on simplicity and productivity.'})
      new_definition_one.save()
      new_definition_two = Definition.new({:definition_one => 'An object oriented programming language.'})
      new_definition_two.save()
      expect(new_definition_two.id()).to(eq(2))
    end
  end

end
