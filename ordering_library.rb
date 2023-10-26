# 1 Defining method
def alphabetize(arr, rev=false) # 2 Passes an array and reverse == false
  arr.sort! # 3 Sort array
	if rev == true # 4 Add control flow for sorting
    arr.reverse!
  else
    arr
  end
end

numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

puts alphabetize(numbers)