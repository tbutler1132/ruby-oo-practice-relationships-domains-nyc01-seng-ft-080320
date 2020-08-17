require 'pry'
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# ny = Listing.new("New York")
# ny2 = Listing.new("New York")
# mia = Listing.new("Miami")

# tim = Guest.new("Tim")
# john = Guest.new("John")

# tim_ny = Trip.new(ny, tim)
# tim_mia = Trip.new(mia, tim)
# john_ny = Trip.new(ny, john)
# john_mia = Trip.new(mia, john)

binding.pry

puts "ear"
