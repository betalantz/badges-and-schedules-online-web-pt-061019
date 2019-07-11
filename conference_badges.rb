def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.collect {|attendee| badge_maker(attendee)}
end

# def batch_badge_creator(attendees)
#   attendees.map do |attendee|
#     "Hello, my name is #{attendee}."
#   end
# end

def assign_rooms(attendees)
  assigned_rooms = []
  attendees.each_with_index do |attendee, index|
    assigned_rooms << "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
  end
  assigned_rooms
end

def assign_rooms(attendees)
  attendees.collect.with_index(1) do |attendee, index|
    assigned_rooms << "Hello, #{attendee}! You'll be assigned to room #{index}!"
  end
end

# def assign_rooms(attendees)
#   counter = 1
#   attendees.collect do |attendee, index|
#     assigned_rooms << "Hello, #{attendee}! You'll be assigned to room #{counter}!"
#     counter += 1
#   end
# end

# def assign_rooms(attendees)
#   attendees.each_with_index.map do |attendee, index|
#     "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
#   end
# end

def printer(attendees)
  batch_badge_creator(attendees).each {|badge| puts badge}
  assign_rooms(attendees).each {|assignment| puts assignment}
end

# def printer(attendees)
#   batch_badge_creator(attendees).each do |badge|
#     puts badge
#   end
#
#   assign_rooms(attendees).each do |assignment|
#     puts assignment
#   end
# end

printer(attendees)

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
