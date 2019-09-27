class Show < ActiveRecord::Base
    def self.highest_rating
        self.all.map(&:rating).max
    end

    def self.most_popular_show
        self.all.find{|show| show.rating == self.highest_rating}
    end
    
    def self.lowest_rating
        self.all.map(&:rating).min
    end

    def self.least_popular_show
        self.all.find{|show| show.rating == self.lowest_rating}
    end

    def self.ratings_sum
        self.all.map(&:rating).sum
    end

    def self.popular_shows
        self.all.select{|show| show.rating > 5}
    end

    def self.shows_by_alphabetical_order
        self.all.order("name ASC")
    end
end