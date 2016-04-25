require "sqlite3"
require "faker"

db = SQLite3::Database.new("guestlist.db")
db.results_as_hash = true

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
			FOREIGN KEY(person_id) REFERENCES people(person_id),
			FOREIGN KEY(event_id) REFERENCES events(event_id)
		)
	SQL

	db.execute(create_people_table_cmd)
	db.execute(create_events_table_cmd)
	db.execute(create_rsvps_table_cmd)
end

def add_fake_data(db)
	10.times do 
		add_person(db, Faker::Name.first_name, Faker::Name.last_name)
	end

	3.times do
		random = Random.new

		#can't get Faker::Date or ::Time to work so doing this instead

		date = 5.to_s + "/" + (random.rand(31)+1).to_s + "/16"

		time = random.rand(12).to_s
		ampm = case random.rand(2)
		when 0 then "am"
		when 1 then "pm"
		end

		add_event(db, Faker::Lorem.sentence(2), date, time+ampm)
	end
end

def add_fake_rsvps(db, people, events)
	people.each do |person|
		person_id = person["person_id"]

		events.each do |event|
			event_id = event["event_id"]

			attending = case Random.new.rand(2)
			when 0 then true.to_s
			when 1 then false.to_s
			end

			db.execute("INSERT INTO rsvps (attending, person_id, event_id) VALUES (?, ?, ?)", [attending, person_id, event_id])
		end
	end
end


def add_event(db, event, date, time)
	db.execute("INSERT INTO events (event, date, time) VALUES (?, ?, ?)", [event, date, time])
end

def add_person(db, first_name, last_name)
	db.execute("INSERT INTO people (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
end

def add_rsvp(db, attending, person_id, event_id)
	db.execute("INSERT INTO rsvps (attending, person_id, event_id) VALUES (?, ?, ?)", [attending, person_id, event_id])
end

def display_rsvps(db, people, event_id)
	people.each do |person|
		attending = case person["attending"]
		when "true" then "attending"
		when "false" then "not attending"
		end

	puts "#{person["person_id"]}: #{person["first_name"]} #{person["last_name"]} (#{attending})"
	end
end

def display_person(db, person)
	attending = case person["attending"]
	when "true" then "attending"
	when "false" then "not attending"
	end

	puts "#{person["person_id"]}: #{person["first_name"]} #{person["last_name"]} (#{attending})"
end

#driver code
puts "Create new tables with fake data? (y/n)"
restart = gets.chomp
if restart == "y"
	db.execute("DROP TABLE IF EXISTS people")
	db.execute("DROP TABLE IF EXISTS events")
	db.execute("DROP TABLE IF EXISTS rsvps")
	create_tables(db)
	add_fake_data(db)

	people = db.execute("SELECT * FROM people")
	events = db.execute("SELECT * FROM events")

	add_fake_rsvps(db, people, events)
	rsvps = db.execute("SELECT * FROM rsvps")
end

mode = nil
until mode == "q" 
	puts "([d]isplay, [u]pdate, or [q]uit?)"
	mode = gets.chomp
	if mode == "d"
		puts "Choose an event by number:"
		events = db.execute("SELECT * FROM events")
		events.each do |event|
			puts "#{event["event_id"]}: #{event["date"]} #{event["time"]}, #{event["event"]}"
		end
		event_id = gets.chomp

		people = db.execute("SELECT * FROM rsvps NATURAL JOIN people WHERE event_id = ?", [event_id])
		display_rsvps(db, people, event_id)
	elsif mode == "u"
		puts "Choose an event by number:"
		events = db.execute("SELECT * FROM events")
		events.each do |event|
			puts "#{event["event_id"]}: #{event["date"]} #{event["time"]}, #{event["event"]}"
		end
		event_id = gets.chomp

		puts "Choose a person by number:"
		
		people = db.execute("SELECT * FROM rsvps NATURAL JOIN people WHERE event_id = ?", [event_id])
		display_rsvps(db, people, event_id)
		person_id = gets.chomp

		new_attending = case people[person_id.to_i - 1]["attending"]
		when "true" then "false"
		when "false" then "true"
		end

		db.execute("UPDATE rsvps SET attending = ? WHERE person_id = ? AND event_id = ?", [new_attending, person_id, event_id]) 

		updated_person = db.execute("SELECT * FROM rsvps NATURAL JOIN people WHERE person_id = ? AND event_id = ?", [person_id, event_id]).first
		
		display_person(db, updated_person)
	end
end