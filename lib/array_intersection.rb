# array intersection


# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)

  if array1 == nil || array2 == nil
    return []
  end

  intersection = []

  array1.each do |array1_num|
    array2.each do |array2_num|
      if array1_num == array2_num
        intersection << array1_num
      end
    end
  end

  return intersection

  # =begin
  # Time complexity = O(n * m), where n and m are the lengths of the first and second array.
  #
  # Space complexity = O(n), where n is the smallest array length
  # =end

  raise NotImplementedError
end
