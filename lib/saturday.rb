class Saturday
	def self.by_year(year)
		date=Dates.new(year)
		date.find_saturdays
	end

	def self.by_year_and_month(year,month)
		date= Dates.new(year,month)
		date.find_saturdays
	end
	
end
require 'saturday/dates'