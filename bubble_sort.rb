def bubble_sort(array)
    sorted = false
    sorted_array = array

    while sorted == false
        changes = 0
        0.upto((array.length-2)) do |idx1|
            idx2 = idx1 + 1
            num_a = sorted_array[idx1]
            num_b = sorted_array[idx2]
            if num_b < num_a
                sorted_array[idx1] = num_b
                sorted_array[idx2] = num_a
                changes += 1
            end
        end
        if changes == 0
            sorted = true
        end
    end

    return sorted_array
end

print bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
puts " "

print bubble_sort([9,10,22,1,4,100,50,3,-1])
#=> [-1,1,3,4,9,10,22,50,100]