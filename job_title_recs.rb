def getdata()
  job_title_array = []
  File.foreach('bls_job_titles.txt') do |line|
    row = line.split("|")
    puts row
    record = "{ title_id: #{row[0]}, title: #{row[1]}#{row[2]} }"
    job_title_array.push(record)
  end
  puts job_title_array
   File.open("bls_seed_data.txt", 'w') {|f| f.write(job_title_array) }
end

getdata()