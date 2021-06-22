class Crypto  
    @@all = []
    attr_accessor :name, :about
    
    def initialize(name)
        @name = name
        #@about = about 
        save 
    end 
    
    def self.all
        #Scraper.scrape_about
        Scraper.scrape_currencies if @@all.empty? 
        @@all 
    end 
    
    #def about
        #Scraper.scrape_about
    #end 

    def save 
        @@all << self 
    end 
end 