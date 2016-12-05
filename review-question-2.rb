class Car
  attr_reader :make, :model

  @@all = []

  def self.all
    @@all
  end

  def initialize(make = "ford", model = "fiesta")
    @make = make
    @model = model
    @@all << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end
end

car = Car.new("volvo", "lightening")
puts car.make
#=> "volvo"
puts car.model
#=> "ligthening"

puts car.drive
# => "VROOOOOOOOOOOOM!"

puts Car.all
#=> [car1, car2, car3]

##BONUS:

Car.new(make: "volvo", model: "lightening")

puts car.make
#=> "volvo"
puts car.model
#=> "ligthening"
