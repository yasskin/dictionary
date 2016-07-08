class Definition
  attr_reader(:definition_entry)

  define_method(:initialize) do |attributes|
    @definition_entry = attributes.fetch(:definition_entry)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_singleton_method(:find) do |id|
    found_definition = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(identification.to_i())
        found_definition = definition
      end
    end
    found_definition
  end

end
