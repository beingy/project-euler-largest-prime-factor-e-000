# Enter your procedural solution here!
def largest_prime_factor(number)
  odd_factor =  3
  largest_odd_factor = 3
  while Math.sqrt(odd_factor) < number
    if number % odd_factor == 0
      if odd_factor > largest_odd_factor
        largest_odd_factor = odd_factor
      end
      number = number / odd_factor
      odd_factor += 2
    else
      odd_factor += 2
    end
  end
  largest_odd_factor
end

#puts largest_prime_factor(600851475143)