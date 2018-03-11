=begin

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end




def palindrome(string)
  i = 0
  while i < string.length
    if string[i] != string[string.length-1-i]
      return false
    end
    i = i + 1
  end
  return true
end


def checkproducts(num)
  i = 999
  while i >= 100
    if num%i == 0
      temp = num / i
        if temp >= 100 && temp <= 999
          puts i, temp
          return true
        end
    end
    i -= 1
  end
  return false
end


def largestPalProduct
  i = 998001
  while i > 100000
    if palindrome(i.to_s) && checkproducts(i)
      return i
    end
    i -= 1
  end
end

puts(largestPalProduct)