class TopTen::Scraper

    def self.scrape_country
        doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel/countries"))
        binding.pry

        countries = doc.css("marketing-article").text

        country_1 = self.new
        country_1.name = "Chile"
        country_1.description = "Chile is a sinewy sliver of a nation, isolated from the rest of South America (and indeed the world) by the soaring Andes to the east, the vast Pacific Ocean to the west, the bone-dry Atacama Desert up north and the impenetrable wilds of Patagonia down south. From its disparate extremes to the ever-trendier capital of Santiago at its heart, the country’s citizens will unite in 2018 to mark 200 years of independence. Thanks to new non-stop flights from both London and Melbourne, it’s never been easier to catch a plane, raise a glass of pisco sour and toast the celebration."

        country_2 = self.new
        country_2.name = "South Korea"
        country_2.description = "South Korea is a compact playground of Asian modernity. High-rises soar in the futuristic capital city, Seoul, which in 2017 received a huge facelift with the opening of its new Seoul-lo 7017, a high-line park with cafes, bars and libraries along a disused elevated highway. South Korea has embraced its hosting of the 2018 Winter Olympics in Pyeongchang, and a new high-speed railway line will whisk travellers across the country to the Games. So don your hats and gloves to cheer on the best and brightest as they swoosh their way to glory. Or wait until it warms up and experience mountainous delights followed by steamy urban nightlife."

        [country_1, country_2]
    end
end