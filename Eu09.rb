=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end
def pyth

    arr = [1]
    i = 2
    
    while arr[arr.length-1] < 1000000
        arr.push(i**2)
        i += 1
    end
    
    i = 0
    while i < arr.length
        j = i + 1
        while j < arr.length
            k = j + 1
            while k < arr.length
                if arr[i] + arr [j] == arr[k]
                    puts
                    puts arr[i], arr [j], arr[k]
                    if i+1 + j+1 + k+1  == 1000
                        return (i+1) * (j+1) * (k+1)
                    end
                end
                k += 1
            end
            j += 1
        end
        i += 1
    end
end 


puts pyth