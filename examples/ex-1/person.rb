class Person
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  private
  attr_reader :first_name, :last_name

end

maxi = Person.new(first_name:"maxi",last_name: "amo")
p maxi

# p maxi.first_name
# p maxi.last_name
p maxi.full_name