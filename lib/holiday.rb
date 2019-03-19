require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  return holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if holiday == :christmas || holiday == :new_years
        supplies << supply
      end
    end
  end
puts holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if holiday == :memorial_day
        supplies << supply
      end
    end
  end
  puts holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  puts holiday_hash
  return holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  return holiday_hash[:winter].values.flatten
end



def all_supplies_in_holidays(holiday_hash)

  holiday_hash.collect do |season, holiday|
    puts season.to_s.capitalize
      holiday.collect do |holiday, supply|
     if holiday.to_s.include?("_")
        holiday_array = Array.new
        holiday.to_s.split("_").collect do |word|
          holiday_array << word.capitalize!
          puts holiday_array

      else
        puts holiday.to_s.capitalize
      end
    end
    ##    holiday_array = Array.new
      ##  holiday.to_s.split("_").collect do |word|
        ##  holiday_array << word.capitalize!
      ##    end
      ##    holiday_array.join(" ")
    ##    else

    ##    end
  ##  supply.collect do |supply|
  ##      supply.to_s.capitalize
  ##    end

  ##    end
  ##    holiday.to_s.capitalize

##end

end

end





def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end

=begin

holiday_hash = {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }
    }
=end
