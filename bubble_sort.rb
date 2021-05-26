def bubble_sort(array)
  unsorted = true
  # while the array is unsorted
  while unsorted do
    # loop through the array
    i = 0
    unsorted = false
    while i < (array.length - 1)
      # if the value of the current index is greater than the next index
      if array[i] > array[i + 1]
        # set the value of the current index to the value of the next index & the value of the next index to the value of the current index
        array[i], array[i + 1] = array[i + 1], array[i]
        unsorted = true
      end
      i += 1
    end
  end
  # return array
  p array
end

p bubble_sort([4,3,78,2,0,2])