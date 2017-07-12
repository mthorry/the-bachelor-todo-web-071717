require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num,contestants|
    if season_num == season
      contestants.each do |key, value|
        if key["status"] == "Winner"
          return key["name"].split(" ").first
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_num,contestants|
    contestants.each do |key, value|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  hometowners = 0
  data.each do |season_num,contestants|
    contestants.each do |key, value|
      if key["hometown"] == hometown
        hometowners += 1
      end
    end
  end
  hometowners
end


def get_occupation(data, hometown)
  data.each do |season_num,contestants|
    contestants.each do |key, value|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  avg_age = 0
  total = 0
  data.each do |season_num,contestants|
    if season_num == season
      contestants.each do |key, value|
      avg_age += key["age"].to_f
      total += 1
    end
  end
  end
  (avg_age/total).round
end
