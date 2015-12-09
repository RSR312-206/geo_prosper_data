require 'json'
def getdata()
  ind_by_loc = {}
  File.foreach('industries_by_location.txt') do |line|
    row = line.split(',')
    city = row[0]
    industry = row[1]

    if ind_by_loc.include?(city)
      if ind_by_loc[city].include?(industry)
        ind_by_loc[city][industry] += 1
      else
        ind_by_loc[city][industry] = 1
      end
    else
      ind_by_loc[city] = {}
      ind_by_loc[city][industry] = 1
    end
  end
    puts ind_by_loc
end

getdata()


    # seattle = ind_by_loc["16980"]
    # seattle.each do |k, v|
    #  if v == seattle.values.max
    #   puts "#{k} and #{v}"
    # end

  # end
