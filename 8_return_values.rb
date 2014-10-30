# Return values

# Suppose we want to do some data analysis.
# Eventually, I want to print the STANDARD DEVIATION of a set of numbers.
# In other words, if I have a set of numbers like this:

first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]

# Then I want to be able to do something like this:

#     stdev1 = standard_deviation(first_dataset)

# And have it work.

# In order to find the STANDARD DEVIATIONS of sets of numbers, we have
# to be able to find VARIANCES. In order to find VARIANCES, we have to be
# able to find SUMS and MEANS.

# So, let us first define some tools that will be helpful in taking the
# intermediate steps:

# SUM
# ===
# To find the sum of a set of numbers,
#  - we start with 0
#  - for each number in the set,
#   - we add it to the running total
#  - after we've looked at every number, the running total is the sum

def sum(first_dataset)
  running_total = 0
  first_dataset.each do |numbers|
    running_total = running_total + numbers
  end

  return running_total
end

# MEAN
# ====
# To find the mean of a set,
#  - we sum up all the elements
#  - then we divide the sum by the number of elements in the set

def mean(first_dataset)
  

  # Let's re-use the work we did above in the sum method

  # ====================
  running_total = 0
  first_dataset.each do |numbers|
    running_total = running_total + numbers
  end
  
  count_of_numbers = first_dataset.count
  
  return running_total / count_of_numbers

end  # ====================


# VARIANCE
# ========
# To find the variance of a set,
#  - we find the mean of the set
#  - for each number in the set,
#   - we find the difference between the number and the mean
#   - we square the difference
#  - the variance is the mean of the squared differences

def variance(first_dataset)
  # Let's re-use the work we did above in the mean method
  differences = []
  difference_squared = 0
  differences_squared = []
  sum_of_difference_squared = 0
  # ====================
  
  # get the differences
  first_dataset.each do |numbers|
    differences.push(numbers - mean(first_dataset))
  end

# get the squared differences
  differences.each do |difference|
   differences_squared.push(difference ** 2)
 end

#get the mean of the squared differences

  # add the squared differences up
 differences_squared.each do |squares|
   sum_of_difference_squared = sum_of_difference_squared + squares
 end

# divide by number of numbers
 return sum_of_difference_squared / first_dataset.count

  # ====================
end

puts differences
puts differences_squared
puts sum_of_difference_squared
puts variance(first_dataset)
#puts variance(first_dataset)

# STANDARD DEVIATION
# ==================
# To find the standard deviation of a set,
#  - take the square root of the variance

def standard_deviation(first_dataset)
  # ====================
  # Your code goes here.
  # ====================
end


# Finally, everything above allows us to do:

# first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]
# stdev1 = standard_deviation(first_dataset)
# puts "The standard deviation of the first dataset is #{stdev1.round(2)}."

# second_dataset = [2, 9, 405, 562, 740, 133, 346, 509, 21, 93]
# stdev2 = standard_deviation(second_dataset)
# puts "The standard deviation of the second dataset is #{stdev2.round(2)}."
