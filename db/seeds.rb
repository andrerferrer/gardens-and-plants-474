puts "Cleaning the DB"
Garden.destroy_all if Rails.env.development?

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