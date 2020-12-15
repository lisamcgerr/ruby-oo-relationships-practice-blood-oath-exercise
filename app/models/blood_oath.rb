class BloodOath

    attr_reader :cult, :follower, :initiation_date
    
    def initialize(cult, follower)
        @initiation_date = Time.now
        @cult = cult
        @follower = follower

    end

end