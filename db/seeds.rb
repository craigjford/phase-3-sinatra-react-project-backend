puts "🌱 Starting seed..."

wine_types = ["Chardonnay", "Sauvignon Blanc", "Pinot Grigio", "Pinot Noir", "Zinfandel", "Cabernet Sauvignon"]

puts "🌱 Emptying tables..."
Wine.all.each do |w|
    w.destroy
end

Vineyard.all.each do |v|
    v.destroy
end

puts "🌱 Seeding Vineyards..."
Vineyard.create(name: "Louis M. Martini Winery", address: "254 Saint Helena", city: "St. Helena", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07050512/louis-martini-winery-outdoor-terrace-fireplace-1320x880-2.jpg")
Vineyard.create(name: "Hall St. Helena", address: "401 Saint Helena", city: "St. Helena", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07051135/hall-wines-st-helena-facebook-photo-1320x880-2.jpg")
Vineyard.create(name: "Pine Ridge Vineyards", address: "5901 Silverado Trail", city: "Napa", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07133506/Pine-Ridge-Vineyards-Estate-property-ariel-view-1320x880-2.jpg")
Vineyard.create(name: "Domaine Carneros", address: "1240 Duhig Road", city: "Napa", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2019/02/26133823/blog-030519-napa-pic4.jpg")
Vineyard.create(name: "Robert Mondavi Winery", address: "7801 Saint Helena", city: "St. Helena", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07060616/robert-mondavi-winery-napa-valley-1320x880a.jpg")
Vineyard.create(name: "Idyllic Serenity", address: "1350 Acacia Drive", city: "Oakville", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2019/02/27090016/far-niente-property-napa-valley-1320x880-2.jpg")
Vineyard.create(name: "Mayacamas Vineyards & Winery", address: "1155 Lokoya Road", city: "Napa", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2019/02/27090016/mayacamas-vineyards-the-meadow-1320x880-2.jpg")
Vineyard.create(name: "Chateau Montelena Winery", address: "1429 Tubbs Lane", city: "Calistoga", state: "California", image_url: "https://s3.amazonaws.com/winecountry-media/wp-content/uploads/sites/4/2021/04/07050730/montelena-banner-2.jpg")




puts "🌱 Seeding Wines..."

Vineyard.all.each do |vineyard|
    rand(2..5).times do 
        Wine.create(name: wine_types.sample, price: rand(35..60), vineyard_id: vineyard.id, year: rand(2011..2020))
    end
end


puts "✅ Done seeding!"
