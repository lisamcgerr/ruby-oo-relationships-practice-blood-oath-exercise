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

    #returns to blood_oath_instances the follower is in
    #returning an array of follower's cults
    def cults 
        BloodOath.all.select {|blood_oath_instance| blood_oath_instance.follower == self}
    end

    #follower1.joit_cult(cult1)
    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        self.all.select {|follower_instances| follower_instance.age >= age}
    end
end