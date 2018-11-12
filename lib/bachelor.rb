def get_first_name_of_season_winner(data, season)
  
  data.each do |seasons, contestant_info|
    if seasons[season]
      contestant_info.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, contestant_info|
    contestant_info.each do |contestant| 
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0 
  data.each do |seasons, contestant_info| 
    contestant_info.each do |contestant| 
      if contestant["hometown"] == hometown 
        hometown_counter += 1
      end
    end
  end  
  return hometown_counter
end

def get_occupation(data, hometown)
  data.each do |seasons, contestant_info| 
    contestant_info.each do |contestant| 
      if contestant["hometown"] == hometown 
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)

  data.each do |seasons, contestant_info| 
    all_ages = 0
    if seasons[season] 
      contestant_info.each do |contestant|
        all_ages += contestant["age"].to_i
      end
    average = all_ages / contestant_info.length
    return average.ceil
    end
  end
end
