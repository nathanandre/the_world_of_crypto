class Crypto  
    @@all = []
    attr_accessor :name, :about
    
    def initialize(name)
        @name = name 
        save 
    end 
    
    def self.all
        Scraper.scrape_currencies if @@all.empty? 
        @@all 
    end 
    def save 
        @@all << self 
    end 
end 