class Cult


    attr_reader :name, :location, :founding_year, :slogan

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end


    def self.all
        @@all
    end

    def recruit_follower(follower, initiation_date)
        binding.pry
        BloodOath.new(self, follower, initiation_date)
    
    end
end