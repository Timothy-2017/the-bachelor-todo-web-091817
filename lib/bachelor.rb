def get_first_name_of_season_winner(data, season_10)
  # code here
  data.each do |season, contestants|
    if season == season_10
      contestants.each do |contestant|
        if contestant.fetch("status") == "Winner"
          return contestant.fetch("name").split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant.fetch("occupation") == occupation
        return contestant.fetch("name")
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant.fetch("hometown") == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant.fetch("hometown") == hometown
        return contestant.fetch("occupation")
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum_years = 0
  number_contestants = 0
  data.each do |season_num, contestants|
    if season_num == season
      contestants.each do |contestant|
        sum_years += contestant.fetch("age").to_f
        number_contestants += 1
      end
    end
  end
  (sum_years / number_contestants).round
end
