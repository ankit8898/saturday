require 'date'
class Saturday::Dates
  attr_accessor :date ,:year ,:month
  
  MONTHS_MAP = [{:january => 31},
                  {:february => 28},
                  {:march => 31},
                  {:april => 30},
                  {:may => 31},
                  {:june => 30},
                  {:july => 31},
                  {:august => 31},
                  {:september => 30},
                  {:october => 31},
                  {:november => 30},
                  {:december => 31}]

  def initialize(year=nil,month=nil)
    @year = year
    @month = month
    @date = @year && @month.nil? ? Date.new(year) : Date.new(year,month)
  end

    def find_saturdays
      @date.leap? ? MONTHS_MAP[1][:february] = 29 : MONTHS_MAP
      dates = []
      year ,month = @date.year ,@date.month
      if @year && @month
        MONTHS_MAP[@month - 1].each_pair { |key,value|  dates << find_dates(year,month,value)} 
    else
        MONTHS_MAP.each {|k| k.each_pair { |key,value|  dates << find_dates(year,MONTHS_MAP.index(k) + 1,value)} }
      end  
      dates
    end

    private

    def find_dates(year,month,value)
      saturdays = []
      1.upto(value) {|o| saturdays << Date.new(year,month,o) if Date.new(year,month,o).saturday? }
      saturdays
    end
end