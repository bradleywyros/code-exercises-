# Reverse every n items of an array

# Initialize array 
array = [1, 2, 3, 4, 5, 6]

# Function that reverses every n items in an array
def reverse_n_items(n, arr)
    rev = Array.new # array that holds the n items to be reversed
    i = 0           # counter for main while loop


    while i < arr.length  
        j = 0 # counter for n items in array
        k = i # counter for index of items in arr that need to be reversed 

        # pushes n items at index k of arr to rev
        while j < n && k < arr.length
            rev.push(arr[k])
            j += 1
            k += 1
        end

        # replaces item in arr at index i with last item popped from rev
        while !rev.empty?
            arr[i] = rev.pop
            i += 1
        end
    end
end

# User inputs a number of items to reverse
# displays original and newly reversed array
print array
puts "\nType a number for every n items:"
n = gets.chomp.to_i
reverse_n_items(n, array)
puts "New array: #{array}"



