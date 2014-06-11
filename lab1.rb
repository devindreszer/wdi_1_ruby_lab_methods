
class String
  def toonify(accent)
    case accent
    when :daffy
      self.gsub('S','Th').gsub('s','th')
    when :elmer
      self.gsub('R', 'W').gsub('r', 'w')
    when :tom
      self.gsub('R', 'Ah').gsub('r', 'ah')
    else
      self
    end
  end
end

puts "Dark dock".toonify(:tom)


ACCENTS = {
  daffy: ['s', 'th']
  elmer: ['r', 'w']
  tom: ['ar', 'ah']
}

def toonify(accent, sentence)
  if ACCENTS.key?(accent)
    sentence.gsub(*ACCENTS[accent])
  else
    sentence
  end
end

puts toonify(:tom, "Park your car at Harvard Yard")
