class Follower
  attr_reader :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    valid_inputs?
    @@all << self
  end

  def valid_inputs?
    if (!@name.is_a?(String) || !@age.is_a?(Integer) || 
       !@life_motto.is_a?(String))
        raise ArgumentError.new("Please enter valid inputs")
    end
  end

  def self.all
    @@all
  end
  
  def self.of_a_certain_age(age)
    @@all.select { |follower| follower.age == age }
  end
  
  def self.most_active
    followers = BloodOath.all.map { |bloodoath| bloodoath.follower }
    followers.max_by { |follower| followers.count(follower) }
  end

  def self.top_ten
    BloodOath.all.sort do |bloodoath_a, bloodoath_b| 
      bloodoath_b.follower.cults.count <=> bloodoath_a.follower.cults.count
    end
    .map { |bloodoath| bloodoath.follower }
    .uniq[0..9]
  end
  
  def join_cult(cult, initiation_date)
    BloodOath.new(cult, self, initiation_date)
  end

  def all_blood_oaths
    BloodOath.all.select { |bloodoath| bloodoath.follower == self }
  end
  
  def cults
    all_blood_oaths.map { |bloodoath| bloodoath.cult }
  end 
  
  def my_cults_slogans
    cults.map { |cult| cult.slogan }
  end

end