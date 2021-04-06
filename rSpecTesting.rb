require "rspec/autorun"
# calc = Calculator.new
# calc.add(5, 10) # => 15

class Calculator
  def add(a, b)
    a + b
  end

  def factorial(n)
    if n == 0
      1
    else
    (1..n).reduce(:*)
    end
  end
end


describe Calculator do
  describe "#add" do
    it "Returns the sum of its 2 arguments" do
      calc = Calculator.new

      expect(calc.add(5, 10)).to eq(15)
    end

    it "Returns the sum, of 2 diferent arguments" do
      calc = Calculator.new
    
      expect(calc.add(1, 2)).to eq(3)
    end
  end

  describe "#factorial" do
    it "Returns 1 when given 0" do
      calc = Calculator.new
      
      expect(calc.factorial(0)).to eq(1)
    end
    
    it "Returns 120 when given 5" do
      calc = Calculator.new
      
      expect(calc.factorial(5)).to eq(120)      
    end
  end
end


class Person
  def initialize(args = {})
    @first_name = args[:first_name]
    @middle_name = args[:middle_name]
    @last_name = args[:last_name]
  end
  def full_name
    "#{@first_name} #{!@middle_name.nil? ? "#{@middle_name} " : "" }#{@last_name}"
  end

  def middle_initial
    "#{@first_name} #{!@middle_name.nil? ? "#{@middle_name[0]} " : "" }#{@last_name}"

  end

  def initials
    "#{@first_name[0]} #{!@middle_name.nil? ? "#{@middle_name[0]} " : "" }#{@last_name[0]}"
    
  end
end

tom = Person.new(first_name:"Tom", last_name: "Ford")

describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      tom = Person.new(first_name:"Thomas", middle_name:"James", last_name: "Ford")

      expect(tom.full_name).to eq("Thomas James Ford")
    end

    it "does not add extra spaces if middle name is missing" do
      tom = Person.new(first_name:"Thomas", last_name: "Ford")

      expect(tom.full_name).to eq("Thomas Ford")
    end
  end

  describe "#middle_initial" do
    it "concatenates first name, middle name, and last name with spaces" do
      tom = Person.new(first_name:"Thomas", middle_name:"James", last_name: "Ford")

      expect(tom.middle_initial).to eq("Thomas J Ford")
    end

    it "does not add extra spaces if middle name is missing" do
      tom = Person.new(first_name:"Thomas", last_name: "Ford")

      expect(tom.middle_initial).to eq("Thomas Ford")
    end
  end

  describe "#initials" do
    it "concatenates first name, middle name, and last name INITIALS with spaces" do
      tom = Person.new(first_name:"Thomas", middle_name:"James", last_name: "Ford")

      expect(tom.initials).to eq("T J F")
    end

    it "does not add extra spaces if middle name is missing" do
      tom = Person.new(first_name:"Thomas", last_name: "Ford")

      expect(tom.initials).to eq("T F")
    end
  end
end