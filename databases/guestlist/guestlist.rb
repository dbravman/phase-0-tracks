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

def create_tables(db)
	create_people_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS people(
			person_id INTEGER PRIMARY KEY,
			first_name VARCHAR(255),
			last_name VARCHAR(255)
		)
	SQL

	create_events_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS events(
			event_id INTEGER PRIMARY KEY,
			event VARCHAR(255),
			date VARCHAR(255),
			time VARCHAR(255)
		)
	SQL

	create_rsvps_table_cmd = <<-SQL
		CREATE TABLE IF NOT EXISTS rsvps(
			rsvp_id INTEGER PRIMARY KEY,
			attending BOOLEAN,
			person_id INT,
			event_id INT,
			FOREIGN KEY(person_id) REFERENCES people.person_id,
			FOREIGN KEY(event_id) REFERENCES events.person_id,
		)
	SQL

	db.execute(create_people_table_cmd)
	db.execute(create_events_table_cmd)
	db.execute(create_rsvps_table_cmd)
end

#driver code
create_tables(db)
