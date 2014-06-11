
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
