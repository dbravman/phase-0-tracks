class TodoList
	def initialize(list)
		@list = list
	end

	def get_items
		@list
	end	

	def add_item(new_item)
		@list << new_item
	end

	def delete_item(old_item)
		@list.delete(old_item)
	end

	def get_item(index)
		@list[index]
	end
end