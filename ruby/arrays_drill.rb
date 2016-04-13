# At the top of your file, add a method that takes three items as parameters and returns an array of those items. So build_array(1, "two", nil) would return [1, "two", nil]. This won't take much code, but the syntax might feel a bit odd.
def build_array(a, b, c)
	return_array = []
	return_array << a
	return_array << b
	return_array << c
end

# 2.At the top of your file, add a method that takes an array and an item as parameters, and returns the array with the item added. So add_to_array([], "a") would return ["a"], and add_to_array(["a", "b", "c", 1, 2], 3) would return ["a", "b", "c", 1, 2, 3].
def add_to_array(arr, a)
	return_array = arr
	return_array << a
end

# 1.Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.
array_1 = []
p array_1

# 2.Add five items to your array. Print the array.
array_1 << "shoes" << "dragons" << "house" << "bat" << "pet"

# 3.Delete the item at index 2. Print the array.
array_1.delete_at(2)
p array_1

# 4.Insert a new item at index 2. Print the array.
array_1.insert(2, "bulls")
p array_1

# 5.Remove the first item of the array without having to refer to its index. Print the array.
array_1.delete(array_1.first)
p array_1

# 6.Ask the array whether it includes a certain item. Print the result of this method call (labeled so it prints as more than just an isolated boolean value without any context.)
if array_1.include?("bat")
	puts "bat is in array"
else
	puts "bat is not in the array"
end  

# 7.Initialize another array that already has a few items in it.
array_2 = ["watches", "cardinals", "sign"]

# 8.Add the two arrays together and store them in a new variable. Print the new array.
array_3 = array_1 + array_2
p array_3

# At the bottom of the file, call the method to show that it works.
p build_array(1, "two", nil)
# Print a few test calls of the method.
p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)