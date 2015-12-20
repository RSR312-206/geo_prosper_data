def getdata()
  census_ids = {}
  scrap = []
  File.foreach('census_data.txt') do |line|
    row = line.split("|")
    city = row[3]
    geo_id = "#{row[1]}#{row[2]}"
    census_ids[city] = geo_id
  end
  puts census_ids
  File.open("census_geo_ids_clean.txt", 'w') {|f| f.write(census_ids) }
end

getdata()