def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each { |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  }
end

def get_contestant_name(data, occupation)
  # code here
  data.each { |season, contestant|
    contestant.each { |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each { |season, contestant|
    contestant.each { |info|
      if info["hometown"] == hometown
        counter += 1
      end
    }
  }
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each { |season, contestant|
    contestant.each { |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  count = 0
  data[season].each { |contestant|
    total_age += contestant["age"].to_i
    count += 1
  }
  return (total_age/count.to_f).round
end
