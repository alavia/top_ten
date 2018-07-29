class TopTen::Top
    attr_accessor :name, :rank, :description
    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end
end
