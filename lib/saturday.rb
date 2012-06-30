require 'saturday/dates'
class Saturday
	def self.dates(year,month,date)
		date  = Dates.new(year,month,date)
		date.month
	end

end