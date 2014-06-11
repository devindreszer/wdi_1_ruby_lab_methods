# iterative Fibonacci sequence
def iterative_fibs(length)
  fibs = [ 1, 1 ]

  (2...length).each do |i|
    fibs << fibs[i-1] + fibs[i-2]
  end

  fibs
end

puts iterative_fibs(10)

# recursive Fibonacci sequence
def recursive_fibs(length)
  if length == 2
    fibs = [1,1]
  else
    fibs = recursive_fibs(length-1) + [recursive_fibs(length-1)[-1] + recursive_fibs(length-1)[-2]]
  end
  fibs
end

puts recursive_fibs(10)



