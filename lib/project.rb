class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.find_all { |backer| backer.project == self }
        backers.map { |b| b.backer }
    end
end