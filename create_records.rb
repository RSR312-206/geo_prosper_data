def getdata()
  record_array = []
  File.foreach('bls_location_codes_primary.txt') do |line|
    row = line.split("  ")
    puts row[1]
    record = "{ name: #{row[1]}, bls_city_code: '#{row[0]}', census_city_code: '#{row[2]}' }"
    record_array.push(record)
  end
  File.open("seed_data.txt", 'w') {|f| f.write(record_array) }
  puts record_array
end

getdata()


#   {name: "Los Angeles-Long Beach-Santa Ana, CA", size: 13131431, open_housing: 94, housing_cost: 453500, name_id: 31080, bls_city_code: "0031100", census_city_code: "0644000" },
# def getdata()
#   census_ids = {}
#   scrap = []
#   File.foreach('census_data.txt') do |line|
#     row = line.split("|")
#     city = row[3]
#     geo_id = "#{row[1]}#{row[2]}"
#     census_ids[city] = geo_id
#   end
#   puts census_ids
#   File.open("census_geo_ids_clean.txt", 'w') {|f| f.write(census_ids) }
# end

# getdata()