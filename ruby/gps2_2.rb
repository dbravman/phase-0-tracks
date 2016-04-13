# List will look like this:
# item = {:apple => 5, :orange => 3, :bread => 2}
# puts item

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# chop it up by spaces
# set default quantity  (1)
# print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(string)
  list = {}
  initial_list = string.split(' ')
  # initial_value = 1   # DRY!!!
  initial_list.each do | item |
      # list[item] = initial_value    # DRY!!!
      add_or_update_item(list, item)
  end
  list
end

# Method to add an item to a list
# input: list and (string containing (item name & optional quantity))
# steps: test for quantity, set to default if not
# output: list (with new item added)

# Method to update the quantity of an item
# input: list, item, new_quantity
# steps: do the same thing as add_or_update_item, but no default
# output: list (with new quantity)

# We decided to DRY!! and merge these two methods because they're effectively the same

def add_or_update_item(list, item, quantity = 1)
  list[item] = quantity
  list
end


# Method to remove an item from the list
# input: list, item
# steps: remove key from hash
# output: list (without item)

def remove_item(list, item)
   list.delete(item)
   list
end


# Method to print a list and make it look pretty
# input: list
# steps:
  # use an "each" to go thru the elements, puts them (w interpolation)
# output: nil
def pretty_print(list)
   list.each {|item, quantity| puts "#{item} : #{quantity}"}
end

# initial list
initial_list = "carrots apples cereal pizza"
# p initial_list
list = create_list(initial_list)
# p list
list = add_or_update_item(list, 'lemonade', 2)
list = add_or_update_item(list, 'tomatoes', 3)
list = add_or_update_item(list, 'onions')
list = add_or_update_item(list, 'ice cream', 4)
list = remove_item(list, "lemonade")
list = add_or_update_item(list, "ice cream", 1)
pretty_print(list)

# Reflection
# •What did you learn about pseudocode from working on this challenge?
#I learned when to do it: after planning and before coding.  
# •What are the tradeoffs of using arrays and hashes for this challenge?
# A hash is better to use here, so that quantities can be matched to items.  Also, the index of an array isn't necessary because order doesn't matter. 
# •What does a method return?
#Either the last line (implicit) or something explicitly labeled as a return value. 
# •What kind of things can you pass into methods as arguments?
# Objects or default values.
# •How can you pass information between methods?
#Using inputs and outputs
# •What concepts were solidified in this challenge, and what concepts are still confusing?
#I solidified some hash techniques, including default values in hashes.  I'm still struggling conceptually with pseudocoding.  It is hard not to jumping straight to coding.  But I appreciated the value of planning out data structures and methods.