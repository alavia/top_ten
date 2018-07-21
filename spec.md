# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application

    A CLI class has been created which interacts with the user based on the user's input. When the bin file is run, a new CLI object is instantiated and calls the CLI 'call' method on that object. The 'call' method then runs the methods being called inside of it. Some of these methods use data from the other classes in the application. These other classes have been required by the environment (top_ten.rb), which has been required by the bin file.
- [x] Pull data from an external source

    The scraper class uses Nokogiri to pull data from lonelyplanet.com. Then the ruby method 'collect' is used to iterate over the array and CSS selectors drill down to retrieve the necessary data.
- [x] Implement both list and detail views

    When the program is executed, the list of countries is displayed to the user. Based on the user's input, the selected country's details will be displayed. The list can be displayed again when the user inputs 'list.'



