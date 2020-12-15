class BloodOath

    attr_reader :cult, :follower, :initiation_date
    
    @@all = [ ]
    def initialize(cult, follower)
        @initiation_date = Time.now
        @cult = cult
        @follower = follower

        @@all << self
    end

    def self.all
        @@all
    end

end