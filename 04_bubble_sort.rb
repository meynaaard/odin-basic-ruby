require "pry-byebug"
=begin
METHOD bubble_sort(array)
  REPEAT
    FOR each element in list
      look at element and element directly to the right
      IF out of order THEN
        swap elements
      ENDIF
    ENDFOR
  UNTIL array is sorted

  RETURN array
END METHOD
=end

def bubble_sort(array)
  until array == array.sort
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    end
  end

  array
end

p bubble_sort([3, 2, 9, 6, 5])
p bubble_sort([4, 3, 78, 2, 0, 2])
