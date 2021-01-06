class Follower

    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end
    def follower_bloodoaths
        BloodOath.all.select do |bo_instance|
            bo_instance.follower == self
        end
    end

    def cults
        self.follower_bloodoaths.collect do |bo_instance| bo_instance.cult
        end
    end

end