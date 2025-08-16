require "pry-byebug"

def bubble_sort(array)
  iteration = 1

  while iteration < array.length
    is_sorted = true

    (array.length - iteration).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        is_sorted = false
      end
    end

    break if is_sorted

    iteration += 1
  end

  puts
  array
end

p bubble_sort([3, 2, 9, 6, 5])
p bubble_sort([4, 3, 78, 2, 0, 2])

reversed_array = []
for i in (-128..127).to_a.reverse
  reversed_array.push(i)
end

p bubble_sort(reversed_array)
