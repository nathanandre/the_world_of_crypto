class Adivsor
    def greeting 
        puts "Hi There! Welcome to THe World of Crypto!"
        puts "Would you like to search a speacific coin or see a full list of currencies?"
        get_currencies
        view_currencies 
        #search_coin(currency)
    end 
    def get_currencies
        # currencies to be scrapped 
        @currencies = ['Bitcoin', 'Ethereum', 'Binance Coin', 'Dogecoin', 'XRP', 'Thether', 'Cardano', 'Polkadot', 'Uniswap','Litecoin']
    end 
    def view_currencies 
        # to show list of currencies 
        @currencies.each_with_index do |currency, index| 
            puts "#{index + 1}. #{currency}"
        end  
    end 
end 