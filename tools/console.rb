require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lolz_catz = Cult.new("LoLzCatz", "egypt", 1984, "I haz chezburg")
murder_train = Cult.new("Murder_Train", "nevada", 1892, "So you decided to ride this train")
unicorn_eye = Cult.new("Unicorn_Eye", "Europa", 1412, "it sees your soul")


cindy = Follower.new("cindy", 7, "im 7!")
billy_the_kid = Follower.new("billy_the_kid", 45, "kill or be killed")
ralph = Follower.new("ralph", 67, "i choo choo choose you")

#blood_oath = BloodOath.new(cult, follower, initiation_date)
blood_oath_the_first = BloodOath.new(unicorn_eye, cindy, "1623-02-15" )
blood_oath_the_reckoning = BloodOath.new(lolz_catz, billy_the_kid, "1994-10-31")
blood_oath_scanner_like_shit = BloodOath.new(murder_train, ralph, "1904-05-22")
blood_oath_whatever = BloodOath.new(murder_train, cindy, "1952-06-15-")








# Insert code here to run before hitting the binding.pry
# This is convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits