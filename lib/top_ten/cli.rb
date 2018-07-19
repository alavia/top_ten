class TopTen::CLI

    def call
        welcome
        list_countries
        menu
        goodbye
    end


    def welcome
        puts "Welcome!"
        puts "Here you will find the top ten countries you need to visit in 2018, according to Lonely Planet."
    end

    def countries
        @countries = TopTen::Top.all
    end

    def list_countries
        puts "Lonely Planet's Top 10 Countries to Visit in 2018:"
        @country_list = TopTen::Scraper.scrape_country
        countries.each do |country|
            puts "#{country.name}"
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter the number of the country you would like to learn more about or type list to see the list again or type exit:"
            input = gets.strip.downcase

            if input.to_i.between?(1,10)
                the_country = @countries[input.to_i - 1]
                puts "#{the_country.name} - #{the_country.description}"
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