Gem::Specification.new do |s|
  s.name        = 'saturday'
  s.version     = '1.1.1'
  s.date        = '2012-06-30'
  s.summary     = "Saturday helps you find Saturday's for a month/year or month-year!"
  s.description = "A Gem to find Saturdays in a month or a year or in a given month or year"
  s.authors     = ["Ankit gupta"]
  s.email       = 'ankit.gupta8898@gmail.com'
  s.files       = [
                    "lib/saturday.rb",
                    "lib/saturday/dates.rb",
                    "bin/saturday"]
  s.require_paths = ["lib"]
  s.executables << 'saturday'
  s.rubygems_version = "1.8.11"
  s.homepage    =
    'https://github.com/ankit8898/saturday'
end