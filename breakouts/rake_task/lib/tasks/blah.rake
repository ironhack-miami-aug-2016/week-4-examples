namespace :blah do

  desc "Does some cool stuff"
  task :do_stuff => :environment do
    puts "Saving some Things"

    contents = IO.read("/Users/nizar/Desktop/characters.json")

    the_array = JSON.parse(contents)

    the_array.each do |the_item|
      puts "Saving #{the_item["name"]}"
      Thing.create!(name: the_item["name"], description: the_item["occupation"])
    end
  end


  desc "Does some other cool stuff"
  task :do_other_stuff => :environment do
    puts "Saving some Things"

    uri = URI.parse("http://example.com")
    response = Net::HTTP.get_response(uri)
    body = JSON.parse(response.body)


    body["results"].each do |the_item|
      puts "Saving #{the_item["name"]}"

      Thing.create!(name: the_item["name"], description: the_item["id"])
    end
  end

end
