class Member

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(member)
    @name = member[:name]
    @power = member[:power]
    @bio = member[:bio]
    self.class.all << self
  end

  def self.all
    @@all
  end

end
