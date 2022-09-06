puts "🌱 Starting seed..."

wine_types = ["Chardonnay", "Sauvignon Blanc", "Pinot Grigio", "Pinot Noir", "Zinfandel", "Cabernet Sauvignon"]

puts "🌱 Emptying tables..."
Wine.all.each do |w|
    w.destroy
end

Vineyard.all.each do |v|
    v.destroy
end

# puts "🌱 Seeding Vineyards..."
# Vineyard.create(name: "Louis M. Martini Winery", address: "254 Saint Helena", city: "St. Helena", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07050512/louis-martini-winery-outdoor-terrace-fireplace-1320x880-2.jpg")
# Vineyard.create(name: "Hall St. Helena", address: "401 Saint Helena", city: "St. Helena", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07051135/hall-wines-st-helena-facebook-photo-1320x880-2.jpg")
# Vineyard.create(name: "Pine Ridge Vineyards", address: "5901 Silverado Trail", city: "Napa", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07133506/Pine-Ridge-Vineyards-Estate-property-ariel-view-1320x880-2.jpg")
# Vineyard.create(name: "Domaine Carneros", address: "1240 Duhig Road", city: "Napa", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2019/02/26133823/blog-030519-napa-pic4.jpg")

# puts "🌱 Seeding Wines..."

# Vineyard.all.each do |vineyard|
#     rand(2..5).times do 
#         Wine.create(name: wine_types.sample, price: rand(35..60), vineyard_id: vineyard.id)
#     end
# end


puts "✅ Done seeding!"
