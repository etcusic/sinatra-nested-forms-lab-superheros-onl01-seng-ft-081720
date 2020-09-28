class Hero
    attr_accessor :name, :power, :bio#, :team_name, :team_motto

    @@all = []

    def initialize(hash)
        @name = hash[:name]
        @power = hash[:power]
        @bio = hash[:biography]
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end
end