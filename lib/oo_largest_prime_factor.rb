# Enter your object-oriented solution here!
class LargestPrimeFactor
  def initialize(big_number)
    @big_number = big_number
  end

  def big_number=(calc_number)
    @big_number = calc_number
  end

  def number
    odd_factor =  3
    largest_odd_factor = 3
    while Math.sqrt(odd_factor) < @big_number
      if @big_number % odd_factor == 0
        if odd_factor > largest_odd_factor
          largest_odd_factor = odd_factor
        end
        @big_number = @big_number / odd_factor
        odd_factor += 2
      else
        odd_factor += 2
      end
    end
    largest_odd_factor
  end
end

#puts LargestPrimeFactor.new(13195).number