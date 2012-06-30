
require 'saturday/dates'
include Dates
class Saturday
 	class << self
		BY.each do |method|
			define_method(method) do |year=nil,month=nil|
				date=Dates::Saturday.new(year,month)
				date.find_saturdays
			end
		end	

		MONTHS_MAP.each_with_index do |(key,value),index|
			define_method("in_#{key.to_s}") do |year=nil,month=nil|
				date=Dates::Saturday.new(year,month = index)
				date.find_saturdays	
			end
		end
	end
end
