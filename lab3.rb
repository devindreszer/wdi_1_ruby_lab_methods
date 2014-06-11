require 'pry'

STARTS = ['Bed', 'Brunn', 'Dun', 'Far', 'Glen', 'Tarn']
MIDDLES = ['ding', 'fing', 'ly', 'ston']
ENDS = ['borough', 'burg', 'ditch', 'hall', 'pool', 'ville', 'way', 'worth']
WATER_SUFFIX = ["-on-sea", " Falls"]
LAND_PREFIX = ["North ", "East ", "South ", "West ", ""]

def town_names(number: 3, near: nil, short: false)
  names = []

  number.times do
    name = ""

    name << LAND_PREFIX.sample if near == :land
    name << STARTS.sample
    name << MIDDLES.sample if short == false && rand(4) == 1
    name << ENDS.sample
    name << WATER_SUFFIX.sample if near == :water

    names << name
  end
  names
end

puts town_names(number: 10, near: :land, short: true)

binding.pry
