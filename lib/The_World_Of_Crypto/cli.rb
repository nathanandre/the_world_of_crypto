#require 'pry'

class Adivsor
    def greeting 
        puts "\nHi There! Welcome to THe World of Crypto!\n"
        puts "\nWould you like to search a specific coin or see a full list of currencies?\n"
        get_user_input
        #get_currencies
        #view_currencies 
        #search_currency 
    end 

# User should choose either option 1 to search a currency or choose option 2 to view list of currencies 
    def get_user_input
        puts "\nSelect 1. to search a specific coin or 2. to view a full list of currencies.\n"
        choice = gets.to_i 
        if choice == 1 
            search_currency 
            coin_valid? 
        else
            choice == 2
            get_currencies
            view_currencies
        end 
    end 

    def search_currency
        puts "\nType in the name of the coin you would like to search below!\n"
        #coin_valid? 
        #take-in a usuers search and compare it to the the currencies that are in the array of currencies stores in array.
        #If that currencies is stored in the array it will show that currency's "home page". 
        #If the currency is not found user will be asked to check spelling or try a different currency. 
    end 

    def get_currencies
        # currencies to be scrapped 
        @currencies = ['bitcoin', 'ethereum', 'binance coin', 'dogecoin', 'xrp', 'thether', 'cardano', 'polkadot', 'uniswap','litecoin']
    end 

    def coin_valid? 
        coin = gets.strip 
        get_currencies
        if @currencies.include?(coin.downcase) == true 
            puts "\nGreat choice! Let's learn more about #{coin}!\n"
        else 
            puts "\nWhoops! We can't find that one. Check your spelling or search for another.\n"
        end 
        #binding.pry 
        #@currencies.find {|currency| currency.name == coin} <- use when we're dealing with scrapped objects. 
    end 

#search_currency will take in the users input of currency that they would like to search themselves. 
#Method will need to check if the currency thaat is searched is valid, i.e., a currency that is housed in @currencies. 
#When a user selects a currency from the list or by searching they will land at the currency's "home page". 
#On the home page the user can see price, market cap, current news, about, rank amongst other currencies, price history.
#Price History will show 24h H/L, 7d H/L, 30d H/L, 90d H/L, 52w H/L, All Time H/L. 

    def view_currencies 
        # if the user chooses the option to view list of currencies to choose from 
        puts "\nSelect the currency you would like to learn more about by typing it's corresponding number.\n"
        @currencies.each_with_index do |currency, index| 
            puts "#{index + 1}. #{currency}"
        end 
        user_choice = gets.to_i
        if user_choice.between?(1, 10)
            #@currencies.detect {|list_choice| list_choice == @currencies.index + 1}
            chosen_currency = @currencies[user_choice - 1] 
                #binding.pry
            #end 
            puts "Great choice! Let's learn more about #{chosen_currency}!"
        end 
    end 
end 

