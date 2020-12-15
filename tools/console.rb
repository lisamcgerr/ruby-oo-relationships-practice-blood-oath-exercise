require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cult1 = Cult.new("name1", "location1", 2010, "slogan1")
cult2 = Cult.new("name2", "location2", 2011, "slogan2")
cult3 = Cult.new("name3", "location3", 2012, "slogan3")


follower1 = Follower.new("name10", 7, "life_motto1")
follower2 = Follower.new("name11", 45, "life_motto2")
follower3 = Follower.new("name12", 67, "life_motto3")

#blood_oath1 = BloodOath.new(cult1,follower1)
blood_oath2 = BloodOath.new(cult2,follower2)
blood_oath3 = BloodOath.new(cult2,follower1cult)









# Insert code here to run before hitting the binding.pry
# This is convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits