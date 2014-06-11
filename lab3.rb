def town_names(number: 3, near: nil, short: false)
  starts = ['Bed', 'Brunn', 'Dun', 'Far', 'Glen', 'Tarn']
  middles = ['ding', 'fing', 'ly', 'ston']
  ends = ['borough', 'burg', 'ditch', 'hall', 'pool', 'ville', 'way', 'worth']
  water_suffix = ["-on-sea", " Falls"]
  land_prefix = ["North ", "East ", "South ", "West ", ""]

  names = []

  if short == true
    include_middles = false
  elsif rand(4) == 0
    include_middles = true
  else
    include_middles = false
  end


  number.times do
    name = ""

    if near == :land
      name << land_prefix.sample
    end

    name << starts.sample

    if include_middles
      name << middles.sample
    end

    name << ends.sample

    if near == :water
      name << water_suffix.sample
    end

    names.push(name)
  end
  names
end

puts town_names(number: 7, near: :land, short: true)



