class TopTen::CLI

    def call
        welcome
        TopTen::Scraper.scrape_country
        list_countries
        menu
        goodbye
    end

    def welcome
        puts "Welcome, traveler!"
        puts "Not sure where you should go in 2018?"
        puts "This should help!"
    end

    def countries
        @countries = TopTen::Top.all
    end

    def list_countries
        puts "Here are Lonely Planet's Top 10 Countries to Visit in 2018:"
        countries.each do |country|
            puts "#{country.name}"
        end
    end

    def menu
        puts "Enter the number of the country you would like to learn more about."
        puts "You can also enter 'list' to view the list again or 'exit' to exit the program."
        input = gets.strip.downcase

        if input != "exit"
            if input.to_i.between?(1,10)
                the_country = @countries[input.to_i - 1]
                puts "#{the_country.name} - #{the_country.description}"
            elsif input == "list"
                list_countries
            else
                puts "Not sure what you mean."
            end
        menu
        end
    end

    def goodbye
        puts "Safe travels! See you next time!"
    end

end