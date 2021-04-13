
require_relative "person"

describe Person do
  describe "#full_name" do
    it "returns the first and last names concatenated" do
      maxi = Person.new(first_name: "Maxi", last_name:"Amodei")
      full_name = maxi.full_name

      expect(full_name).to eq("Maxi Amodei")
    end
  end
end