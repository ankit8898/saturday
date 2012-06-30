require 'date'
module Dates
  BY  = ['by_year','by_year_and_month']
  MONTHS_MAP = {:nil => :nil,
                :jan => 31,
                :feb => 28,
                :mar => 31,
                :apr => 30,
                :may => 31,
                :jun => 30,
                :jul => 31,
                :aug => 31,
                :sep => 30,
                :oct => 31,
                :nov => 30,
                :dec => 31}
  class Saturday
  attr_accessor :date ,:year ,:month
  
    def initialize(year=nil,month=nil)
      @year = year
      @month = month
      @date = @year && @month.nil? ? Date.new(year) : Date.new(year,month)
    end

    def find_saturdays
      @date.leap? ? MONTHS_MAP[:feb] = 29 : MONTHS_MAP
      dates = []
      year ,month = @date.year ,@date.month
      if @year && @month
        MONTHS_MAP.each_with_index { |(key,value),index|  dates << find_dates(year,month,value) if month == index} 
     else
        MONTHS_MAP.each_with_index { |(key,value),index|  dates << find_dates(year,month = index,value) unless index==0}  
      end  
      dates
    end

    private

    def find_dates(year,month,value)
      saturdays = Array.new
      1.upto(value) {|o| saturdays << Date.new(year,month,o) if Date.new(year,month,o).saturday? }
      saturdays
    end
end
end