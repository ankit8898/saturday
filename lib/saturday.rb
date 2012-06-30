class Saturday

 @@by = ['by_year','by_year_and_month']
	class << self
		@@by.each do |method|
			define_method(method) do |year=nil,month=nil|
				date=Dates.new(year,month)
				date.find_saturdays
			end
		end	
end
end

require 'saturday/dates'