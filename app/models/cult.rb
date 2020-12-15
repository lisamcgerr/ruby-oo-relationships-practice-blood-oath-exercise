require 'pry'

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

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    #many blood_oath_instances under one cult, each blood_oath_instance has many followers, we are returning an array and .count is counting the number of followers in the array
    #returning integer (one value)
    def cult_population
        BloodOath.all.select {|blood_oath_instance| blood_oath_instance.cult = self}.count
    end

    #takes a String argument that is a name and returns a Cult instance whose name matches that argument
    #looking at at all cult instances and returning the cult name equal to the name argument
    def self.find_by_name(name)
        self.all.find {|cult_instance|cult_instance.name == name}
    end

    #select returns array of true values
    #similar method to find_by_name
    def self.find_by_location(location)
        self.all.select {|cult_instance| cult_instance.location == location}
    end

    def self.find_by_founding_year(founding_year)
        self.all.select {|cult_instance|cult_instance.founding_year == founding_year}
    end
end