class Adivsor
    def greeting 
        puts "\nHi There! Welcome to THe World of Crypto!\n"
        puts "\nWould you like to search a specific coin or see a full list of currencies?\n"
        get_user_input
        get_currencies
        #view_currencies 
        #search_coin(currency)
    end 

# User should choose either option 1 to search a currency or choose option 2 to view list of currencies 
    def get_user_input
        puts "\nSelect 1. to search a specific coin or 2. to view a full list of currencies.\n"
        choice = gets 
        if choice == 1 
            search_coin 
        else
            choice == 2
            view_currencies
        end 
    end 

    def get_currencies
        # currencies to be scrapped 
        @currencies = ['Bitcoin', 'Ethereum', 'Binance Coin', 'Dogecoin', 'XRP', 'Thether', 'Cardano', 'Polkadot', 'Uniswap','Litecoin']
    end 
    def view_currencies 
        # if the user chooses the option to view list of currencies to choose from 
        puts "\nSelect the currency you would like to learn more about!\n"
        @currencies.each_with_index do |currency, index| 
            puts "#{index + 1}. #{currency}"
        end  
    end 
end 