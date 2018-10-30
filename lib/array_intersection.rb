# array intersection


# Creates a new array to return the intersection of the two input arrays
def intersection(array1, array2)

  # Brute Force Implementation
  # if array1 == nil || array2 == nil
  #   return []
  # end
  #
  # intersection = []
  #
  # array1.each do |array1_num|
  #   array2.each do |array2_num|
  #     if array1_num == array2_num
  #       intersection << array1_num
  #     end
  #   end
  # end
  #
  # return intersection

  # =begin
  # Time complexity = O(n * m), where n and m are the lengths of the first and second array.
  #
  # Space complexity = O(n), where n is the smallest array length
  # =end

  # Hash Table Implementation:
  if array1 == nil || array2 == nil
    return []
  end

  my_hash = Hash.new(0)

  array1.each do |array1_num|
    my_hash[array1_num] += 1
  end

  array2.each do |array2_num|
    my_hash[array2_num] += 1
  end

  intersection = []

  my_hash.each do |num, count|
    if count >= 2
      intersection << num
    end
  end

  return intersection

  # =begin
  # Time complexity = O(n + m), where n and m are the lengths of the first and second array.
  #
  # Space complexity = O(n), where n is the smallest array length
  # =end

  raise NotImplementedError
end
