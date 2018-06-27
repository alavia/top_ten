# scraped data will be used to create 'top' objects
# each instance of the top class will have a series of attributes (name and desc)
# the values of these attributes will be scraped from the site
# the scraper will be responsible for taking scraped data and using it to instantiate instances of the 'top' class

class TopTen::Top
    attr_accessor :name, :description
    @@all = []

end