class TopTen::CLI

    def call
        list_countries
        menu
        goodbye
    end

    def list_countries
        puts "Lonely Planet's Top 10 Countries to Visit in 2018:"
        @country_list = TopTen::Scraper.scrape_country
        @country_list.each.with_index(1) do |country, i|
            puts "#{i}. #{country.name}"
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the country you would like to learn more about or type list to see the list again or type exit:"
            input = gets.strip.downcase

            if input.to_i.between?(1,10)
                puts @country_list[input.to_i - 1]
            elsif input == "list"
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