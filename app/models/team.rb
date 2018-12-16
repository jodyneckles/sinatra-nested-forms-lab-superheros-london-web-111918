class Team

  attr_accessor :name, :motto

  @@all = []

  def initialize(team_data)
    @name = team_data[:name]
    @motto = team_data[:motto]
    self.class.all << self
  end

  def self.all
    @@all
  end

end
