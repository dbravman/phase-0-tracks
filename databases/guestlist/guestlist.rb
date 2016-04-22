require "sqlite3"

db = SQLite3::Database.new("guestlist.db")
db.results_as_hash = true

class Guest
	attr_reader :first_name, :last_name

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end
end

class Event
	attr_reader :name, :date, :time

	def initialize(name, date, time)
		@name = name
		@date = date
		@time = time
	end

	def reschedule(new_date, new_time)
		@date = new_date
		@time = new_time
	end
end

