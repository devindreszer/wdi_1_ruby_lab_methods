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

# one line version (not as efficient; doesn't work with edge cases)
def prime2?(number)
  (2...number).all?{ |divisor| number % divisor == 0 }
end

puts 29.prime?()
