require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#bad_init = Cult.new("The Cult of Barbers", "Kentucky", "1974", "We cut heads")
#bad_init = Cult.new(1959, "Some place", 1974, "We cut heads")
#bad_init = Follower.new(30, "Seth", "Seth is aight")

#bad_init = BloodOath.new("Seth", cult_1, "1982-09-02")

follower_1 = Follower.new("Seth", 30, "I have no idea what I'm doing")
follower_2 = Follower.new("Diana", 35, "Nothing is forever")
follower_3 = Follower.new("Dom", 30, "All expands onward and outward")
follower_4 = Follower.new("Charlie", 22, "I've got a golden ticket")
follower_5 = Follower.new("Mel", 27, "Nobody knows the trouble I've seen")
follower_6 = Follower.new("Roger", 68, "I love the Mets!")
follower_7 = Follower.new("Stormy", 42, "What kind of name is Stormy?")
follower_8 = Follower.new("Rebecca", 35, "Not the Alfred Hitchcock film")
follower_9 = Follower.new("Sarah", 44, "This is getting biblical")
follower_10 = Follower.new("Tess", 34, "I'm definitely not Seth's sister")
follower_11 = Follower.new("Sven", 28, "Feed me Swedish meatballs")
follower_12 = Follower.new("Quentin", 56, "Kill Bill!")
follower_13 = Follower.new("David Koresh", 39, "Are we sure I'm in the right cult?")
follower_14 = Follower.new("Gizmo", 16, "Not a Mogwai")
follower_15 = Follower.new("Socrates", 77, "Why?")
follower_16 = Follower.new("Jackie", 44, "Off to the races!")
follower_17 = Follower.new("Boris", 37, "For Mother Russia!")

cult_1 = Cult.new("The Cult of Barbers", "Kentucky", 1974, "We cut heads!")
cult_2 = Cult.new("Cult of Cats", "Catan", 1983, "Meow!")
cult_3 = Cult.new("Greg's Club", "Greg's Basement", 1983, "Greg is good")
cult_4 = Cult.new("Yet Another Cult", "Kentucky", 1979, "We <3 cults!")


blood_oath1 = BloodOath.new(cult_1, follower_1, "1974-06-23")
blood_oath2 = cult_1.recruit_follower(follower_2, "1982-02-08")
blood_oath3 = cult_1.recruit_follower(follower_3, "1999-04-21")
blood_oath4 = cult_2.recruit_follower(follower_2, "1983-11-03")
blood_oath5 = cult_2.recruit_follower(follower_1, "1992-08-17")
blood_oath6 = follower_4.join_cult(cult_3, "2012-12-09")
blood_oath7 = cult_4.recruit_follower(follower_2, "2009-07-04")
blood_oath8 = cult_4.recruit_follower(follower_5, "1999-02-22")
blood_oath9 = cult_1.recruit_follower(follower_6, "1987-04-14")
blood_oath10 = cult_2.recruit_follower(follower_7, "1988-05-23")
blood_oath11 = cult_3.recruit_follower(follower_8, "1992-12-19")
blood_oath12 = cult_4.recruit_follower(follower_9, "1996-03-12")
blood_oath13 = cult_2.recruit_follower(follower_10, "1993-06-12")
blood_oath14 = cult_2.recruit_follower(follower_11, "1984-07-11")
blood_oath15 = cult_3.recruit_follower(follower_12, "1991-09-14")
blood_oath16 = cult_1.recruit_follower(follower_13, "1997-05-02")
blood_oath17 = cult_2.recruit_follower(follower_14, "1983-09-01")
blood_oath18 = cult_3.recruit_follower(follower_15, "1990-08-02")
blood_oath19 = cult_3.recruit_follower(follower_2, "1993-07-16")
blood_oath20 = cult_2.recruit_follower(follower_16, "1989-09-20")
blood_oath21 = cult_2.recruit_follower(follower_17, "1997-04-20")
blood_oath22 = cult_2.recruit_follower(follower_8, "2001-09-12")
blood_oath23 = cult_3.recruit_follower(follower_6, "2007-08-19")
blood_oath24 = cult_4.recruit_follower(follower_12, "2002-01-01")
blood_oath25 = cult_2.recruit_follower(follower_10, "1998-11-22")
blood_oath26 = cult_1.recruit_follower(follower_11, "1989-02-11")
blood_oath27 = cult_3.recruit_follower(follower_14, "1994-09-16")
blood_oath28 = cult_1.recruit_follower(follower_13, "1995-10-31")
blood_oath29 = cult_2.recruit_follower(follower_1, "1997-11-12")
blood_oath30 = cult_4.recruit_follower(follower_2, "2001-08-14")
blood_oath31 = cult_1.recruit_follower(follower_8, "1993-03-02")
blood_oath32 = cult_4.recruit_follower(follower_8, "1994-01-23")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits