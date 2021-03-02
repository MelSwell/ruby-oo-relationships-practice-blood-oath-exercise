class BloodOath
  attr_reader :cult, :follower, :initiation_date

  @@all = []

  def initialize(cult, follower, initiation_date)
    @cult = cult
    @follower = follower
    @initiation_date = initiation_date
    valid_inputs?
    @@all << self
  end

  def valid_inputs?
    if (!@cult.is_a?(Cult) || !@follower.is_a?(Follower) ||
         !@initiation_date.is_a?(String))
         raise ArgumentError.new("Please enter valid inputs")
    end
  end

  def self.all
    @@all
  end

  def self.first_oath
    first_initation_date = @@all.map { |bloodoath| bloodoath.initiation_date }.sort[0]
    @@all.select { |bloodoath| bloodoath.initiation_date == first_initation_date }
      .map { |bloodoath| bloodoath.follower }
  end

end