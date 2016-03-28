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