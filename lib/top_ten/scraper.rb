class TopTen::Scraper

    def self.scrape_country
        doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/countries"))
        countries = doc.css(".marketing-article")
        countries.collect do |country|
            new_country = TopTen::Top.new
            new_country.name = country.css("h1").text
            new_country.description = country.css(".marketing-article__content").text.strip

            new_country.save
        end
        # binding.pry
    end
end