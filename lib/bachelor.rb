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
  data.each do |season, contestant_info|
    if contestant_info["occupation"] == occupation
      return contestant_info["name"] 
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  return false
end

def get_occupation(data, hometown)
  # code here
  return false
end

def get_average_age_for_season(data, season)
  # code here
  return false
end
