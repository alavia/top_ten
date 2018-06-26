class TopTen::CLI

    def call
        list_countries
        menu
        goodbye
    end

    def list_countries
        puts "Lonely Planet's Top 10 Countries to Visit in 2018:"
        puts "1. Chile"
        puts "2. South Korea"
        puts "3. Portugal"
        puts "4. Djibouti"
        puts "5. New Zealand"
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the country you would like to learn more about or type list to see the list again or type exit:"
            input = gets.strip.downcase
            case input
            when "1"
                puts "more info on country 1"
            when "2"
                puts "more info on country 2"
            when "3"
                puts "more info on country 3"
            when "4"
                puts "more info on country 4"
            when "5"
                puts "more info on country 5"
            when "list"
                list_countries
            else
                puts "Not sure what you mean. Try typing list or exit."
            end
        end
    end

    def goodbye
        puts "See you next time!"
    end

end