require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
	res = {}
	data.each do |key, values|
		values.each do |char, names|
			names.each do |name|
				if !res[name]
					res[name] = {}
				end
				if !res[name][key]
					res[name][key] = []
				end
				res[name][key].push(char.to_s)
			end
		end
	end
	res
end


# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# nyc_pigeon_organizer(pigeon_data)