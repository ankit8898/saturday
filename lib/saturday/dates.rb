require 'date'
class Saturday::Dates
  attr_accessor :date

  def initialize(year,month,day)
    @date = Date.new(year,month,day)
  end

  def month
    @date.mon
  end
end