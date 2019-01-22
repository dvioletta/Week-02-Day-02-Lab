class Person

  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def get_name()
    return @name
  end

  def get_age()
    return @age
  end

end
