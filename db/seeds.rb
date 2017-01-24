puts "USERS!"
User.destroy_all

u1 = User.create :name => 'James', :email => 'james@ga.co', :password => "chicken", :password_confirmation => "chicken"
u2 = User.create :name => 'Jane', :email => 'jane@ga.co', :password => "chicken", :password_confirmation => "chicken"
u3 = User.create :name => 'Mario', :email => 'mario@ga.co', :password => "chicken", :password_confirmation => "chicken"

puts "\tUser count: #{ User.all.count }"

puts "\nGENRES!"
Genre.destroy_all

g1 = Genre.create :name => "punk"
g2 = Genre.create :name => "rock"
g3 = Genre.create :name => "electronic"
g4 = Genre.create :name => "dance"
g5 = Genre.create :name => "metal"
g6 = Genre.create :name => "folk"
g7 = Genre.create :name => "grunge"
g8 = Genre.create :name => "dubstep"
g9 = Genre.create :name => "deep house"
g10 = Genre.create :name => "drum and bass"
g11 = Genre.create :name => "country"
g12 = Genre.create :name => "classical"
g13 = Genre.create :name => "hip hop"
g14 = Genre.create :name => "r&b"
g15 = Genre.create :name => "blues"
g16 = Genre.create :name => "jazz"
g17 = Genre.create :name => "reggae"

 puts "\tGenre count: #{Genre.all.count}"
