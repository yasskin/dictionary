class Definition

  attr_reader(:definition_one, :id)

  @@definitions = []

  define_method(:initialize) do |attributes|
    @definition_one = attributes.fetch(:definition_one)
    @id = @@definitions.length().+(1)
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end
  
end
