# scraped data will be used to create 'top' objects
# each instance of the top class will have a series of attributes (name and desc)
# the values of these attributes will be scraped from the site
# the scraper will be responsible for taking scraped data and using it to instantiate instances of the 'top' class

class TopTen::Top
    attr_accessor :name, :description
    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
    end

    def self.all
        @@all
        puts "Lonely Planet's Top 10 Countries to Visit in 2018:"
        puts "1. Chile"
        puts "2. South Korea"
        puts "3. Portugal"
        puts "4. Djibouti"
        puts "5. New Zealand"
    end

    
end