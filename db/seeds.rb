puts "Cleaning the DB"
Garden.destroy_all if Rails.env.development?
Plant.destroy_all if Rails.env.development?

puts "Create a garden"
Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

puts "Create another garden"
Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)


puts "Create some plants"

# create is new and save!
Plant.create!(
  name: "Orchid",
  picture_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F546905948469887475%2F&psig=AOvVaw3Qp_kfgaN4CfhcW9nptojx&ust=1605201472946000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCKjp-s__-uwCFQAAAAAdAAAAABAD",
  garden: Garden.first
)

Plant.create!(
  name: "Rose",
  picture_url: "https://images-na.ssl-images-amazon.com/images/I/71etj1mmV9L._AC_SL1500_.jpg",
  garden: Garden.first
)

puts "Finished!
Enjoy your garden"

# puts "
# _
# _(_)_                          wWWWw   _
# @@@@       (_)@(_)   vVVVv     _     @@@@  (___) _(_)_
# @@()@@ wWWWw  (_)\\    (___)   _(_)_  @@()@@   Y  (_)@(_)
# @@@@  (___)     `|/    Y    (_)@(_)  @@@@   \\|/   (_)\\
# /      Y       \\|    \\|/    /(_)    \\|      |/      |
# \\ |     \\ |/       | / \\ | /  \\|/       |/    \\|      \\|/
# jgs \\\\|//   \\\\|///  \\\\\\|//\\\\\\|/// \\|///  \\\\\\|//  \\\\|//  \\\\\\|// 
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# "