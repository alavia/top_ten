
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "top_ten/version"

Gem::Specification.new do |spec|
  spec.name          = "top_ten"
  spec.version       = TopTen::VERSION
  spec.authors       = ["Alavia"]
  spec.email         = ["alavia.yahya@gmail.com"]

  spec.summary       = "Scrapes Lonely Planet website to display top 10 countries to visit in 2018 with details about countries."
  spec.description   = "This gem will teach you about Lonely Planet's Best in Travel Top 10 Countries to Visit in 2018."
  spec.homepage      = "https://github.com/alavia/top_ten"
  spec.license       = "MIT"
  spec.files         = ["lib/top_ten/top.rb", "lib/top_ten/scraper.rb", "lib/top_ten/cli.rb", "lib/top_ten/version.rb", "lib/top_ten.rb"]


  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end


  # spec.files         = `git ls-files -z`.split("\x0").reject do |f|
  #   f.match(%r{^(test|spec|features)/})
  # end
  # spec.bindir        = "bin"
  spec.executables   = ["top_ten"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"


end
