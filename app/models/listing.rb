class Listing

    attr_accessor :city
    @@all = []
    
    def initialize(city)
        @city = city
        @@all << self
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        trips.map do |trip|
            trip.guest
        end
    end

    def self.find_all_by_city(city)
        Listing.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
       total = Listing.all.map do |listing|
            listing.trips.count
        end.max
        # counts = total.map do |trips|
        #     trips.count
        # end.max
        Listing.all.find do |listing|
            listing.trips.count == total
        end
    end


    def self.all
        @@all
    end

end