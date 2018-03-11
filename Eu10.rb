=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end



def isPrime(num)
    
    if num == 2
        return true
    end
    
    if num < 2 || num % 2 == 0 || num == 4
        return false
    end
    
    i = 3
    while i <= Math.sqrt(num).ceil
        if num % i == 0
            return false
        end
        i += 2
    end
    return true
end

# def is_prime(num)
#     # q = n / m
     
#     m = Math.sqrt(num).ceil
#     return false if num < 2
#     return true if num == 2
    
#     i = 0
#     while m - i > 1
#         if (num.to_f / (m - i)) - (num / (m - i)) > 0
#             i += 1
#         else
#             return false
#         end
#     end
    
#     return true
# end

def sumPrimes
    i = 1999999
    sum = 2
    
    # note that this code will never count 2 as prime simply because it never tests 2. 
    # For eficiency, it skips all evens, inadvertently skips 2. 
    # make a better fix later. for now, initialize sum to 2. 
    # was written in reverse order to check if 2 was counted as prime
    while i > 0
        if isPrime(i)
            puts i 
            sum += i
        end
        i -= 2
    end
    
    return sum
    
end

puts isPrime(2)

puts sumPrimes