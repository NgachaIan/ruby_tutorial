def bubble_sort(arr)
    n = arr.length
  
    (0...n).each do |i|
      (0...n - i - 1).each do |j|
        if arr[j] > arr[j + 1]
          # Swap the elements if they are in the wrong order
          arr[j], arr[j + 1] = arr[j + 1], arr[j]
        end
      end
    end
  
    return arr
  end
  
  # Example usage:
  unsorted_array = [64, 34, 25, 12, 22, 11, 90]
  sorted_array = bubble_sort(unsorted_array.dup)
  puts "Unsorted Array: #{unsorted_array}"
  puts "Sorted Array: #{sorted_array}"
  