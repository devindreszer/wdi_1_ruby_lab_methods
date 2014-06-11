def town_names(number: 3, near: nil, short: false)
  starts = ['Bed', 'Brunn', 'Dun', 'Far', 'Glen', 'Tarn']
  middles = ['ding', 'fing', 'ly', 'ston']
  ends = ['borough', 'burg', 'ditch', 'hall', 'pool', 'ville', 'way', 'worth']
  water_suffix = ["-on-sea", " Falls"]
  land_prefix = ["North ", "East ", "South ", "West ", ""]

  names = []

  number.times do
    name = ""

    name << land_prefix.sample if near == :land
    name << starts.sample
    name << middles.sample if short == false && rand(4) == 1
    name << ends.sample
    name << water_suffix.sample if near == :water

    names.push(name)
  end
  names
end

puts town_names(number: 10, near: :land, short: true)
