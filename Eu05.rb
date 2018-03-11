=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end


def gcf(num1, num2)
  
  if num1 >= num2
    smallest = num2
    largest = num1
    if num1% num2 == 0
      return num2
    end
  else
    smallest = num1
    largest = num2
    if num2 % num1 == 0
      return num1
    end
  end
  
  i = smallest/2
  while i > 0
    if smallest % i == 0 && largest % i == 0
      return i
    end
    i -= 1
  end
end

#GCF METHOD NEVER WORKED.TRY AGAIN IF U WANT
def smallestdivisible
    product = 1
    
    i = 11
    while i <= 20
        while gcf(product,i) != 1
            product /= gcf(product, i)
        end
        product *= i

        i +=1 
    end
    return product
end




def smallestdivisibles
    
    i = 11
    j = 2520
    
    while i < 21
        if j % i == 0
            i+=1
        else 
            j+=1
            i = 11
        end
    end 

    return j
end



puts smallestdivisibles