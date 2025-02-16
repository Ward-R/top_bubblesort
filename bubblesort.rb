

def bubble_sort(input_array)
  temp = 0
  length = input_array.length
  swap = true
  
  while swap == true
    swap = false
    input_array.each_with_index do |element, index|
      if (index < length - 1) && (input_array[index] > input_array[index + 1]) # This makes sure it doesn't iterate to a nil value and it also checks if a swap is required.
        temp = input_array[index]  # Next three lines perform swap
        input_array[index] = input_array[index + 1]
        input_array[index + 1] = temp
        swap = true # token to do another pass through loop
      # elsif (swap == false)
      #   break
      
      # elsif (index == length - 1) && (swap == true)
      #   index = 0
      #   swap = false
      end
      #Sp input_array
      # swap = false
      # index = 0
    end
    #index = 0 # resets for another pass through the array
  end
  #p input_array
  return input_array
end

# THIS WILL WORK, JUST DOESN'T KNOW WHEN TO STOP.

p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]
