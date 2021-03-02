class Cult
  attr_reader :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    valid_inputs?
    @@all << self
  end

  def valid_inputs?
    if (!@name.is_a?(String) || !@location.is_a?(String) ||
       !@founding_year.is_a?(Integer) || !@slogan.is_a?(String))
          raise ArgumentError.new("Please enter valid inputs")
    end
  end

  def self.all
    @@all
  end

  def self.find_by_name(cult_name)
    @@all.select { |cult| cult.name == cult_name }
  end

  def self.find_by_location(location)
    @@all.select { |cult| cult.location == location }
  end

  def self.find_by_founding_year(founding_year)
    @@all.select { |cult| cult.founding_year == founding_year }
  end

  def self.least_popular
    @@all.sort { |cult_a, cult_b| cult_a.cult_population <=> cult_b.cult_population }.first
  end

  def self.most_popular
    @@all.sort { |cult_a, cult_b| cult_b.cult_population <=> cult_a.cult_population }.first
  end

  def self.most_common_location
    locations = @@all.map { |cult| cult.location }
    locations.max_by { |location| locations.count(location) }
  end

  def recruit_follower(follower, initiation_date)
    BloodOath.new(self, follower, initiation_date)
  end

  def all_blood_oaths
    BloodOath.all.select { |bloodoath| bloodoath.cult == self }
  end

  def all_followers
    all_blood_oaths.map { |bloodoath| bloodoath.follower }
  end

  def cult_population
    all_blood_oaths.count
  end

  def average_age
    all_followers.map { |follower| follower.age }
      .sum / cult_population
      .to_f
  end

  def my_followers_mottos
    all_followers.map { |follower| follower.life_motto }.uniq
  end

end