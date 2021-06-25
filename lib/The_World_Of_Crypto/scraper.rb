class Scraper 
    def self.scrape_currencies
        doc = Nokogiri::HTML(open("https://coinmarketcap.com/"))
        #puts doc
        coins = doc.css("table.cmc-table.cmc-table___11lFC.cmc-table-homepage___2_guh tr").drop(1).slice(0..9)
        #puts coins.count
        #binding.pry 
        #sc-1eb5slv-0 iJjGCS
        #sc-1eb5slv-0 iJjGCS
        coins.each do |r|
            name = r.css('p.sc-1eb5slv-0.iJjGCS').text
            Crypto.new(name)
        end     
    end 

    def self.scrape_about(coin)
        doc = Nokogiri::HTML(open("https://coinmarketcap.com/currencies/#{coin.name.gsub(/" "/, '-')}/")) 
        #binding.pry
        coin.about = doc.css("div.sc-2qtjgt-0 div p:first-of-type").text
    end 

    def self.scrape_search_about(searched_coin)
        doc = Nokogiri::HTML(open("https://coinmarketcap.com/currencies/#{searched_coin.name.gsub(/" "/, '-')}/")) 
        #binding.pry
        searched_coin.about = doc.css("div.sc-2qtjgt-0 div p:first-of-type").text
    end 
end 