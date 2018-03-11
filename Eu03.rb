=begin

The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

=end



def is_prime?(number)
  i = 2
  if number <= 1
    return false
  end
  
  while i <= number/2
    if number % i == 0
      return false
    else
      i = i + 1
    end
  end
  
  return true
end


def largestprimefactor
  num = 600851475143    
  i = 3
  
  while i < num / 2
  
    if num % i == 0 && is_prime?(num/i)
      return num/i
    else
      i += 2
    end
  end
    return num
end

puts (largestprimefactor)