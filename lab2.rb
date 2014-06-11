class Fixnum
  def prime?()
    if self == 2 && self == 3
      true
    elsif self > 3
      2.upto(Math.sqrt(self)) do |test|
        return false if self % test == 0
      end
      true
    else
      false
    end
  end
end


puts 29.prime?()
