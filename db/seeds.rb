# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts 'SETTING UP EXAMPLE USERS'
user1 = User.create! :name => 'First User', :email => 'user@test.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user1.name
user2 = User.create! :name => 'Other User', :email => 'otheruser@test.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name


puts 'SETTING UP EXAMPLE Village'
user1 = Village.create! :name => 'First User', :user_id => 1 
puts 'New user created: ' << user1.name
user1 = Village.create! :name => 'LALALA', :user_id => 1 
puts 'New user created: ' << user1.name
user1 = Village.create! :name => 'asad', :user_id => 1 
puts 'New user created: ' << user1.name
user1 = Village.create! :name => 'asadas', :user_id => 2 
puts 'New user created: ' << user1.name
user1 = Village.create! :name => 'aghtras', :user_id => 2 
puts 'New user created: ' << user1.name


puts 'SETTING UP HOLZFAELLER'

  h1 = 0
  h1 = Holzfaeller.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Holzfaeller created: ' << h1.lvl
  h1.save
  h = Holzfaeller.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Holzfaeller created: ' << h.lvl
  h.save
  h = Holzfaeller.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Holzfaeller created: ' << h.lvl
  h.save
  h = Holzfaeller.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Holzfaeller created: ' << h.lvl
  h.save
  h = Holzfaeller.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Holzfaeller created: ' << h.lvl
  h.save
  
  puts 'SETTING UP STEINBRUCH'
  h1 = 0
  h1 = Steinbruch.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Steinbruch created: ' << h1.lvl
  h1.save
  h = Steinbruch.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Steinbruch created: ' << h.lvl
  h.save
  h = Steinbruch.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Steinbruch created: ' << h.lvl
  h.save
  h = Steinbruch.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Steinbruch created: ' << h.lvl
  h.save
  h = Steinbruch.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Steinbruch created: ' << h.lvl
  h.save
  
  puts 'SETTING UP Miene'

  h1 = 0
  h1 = Miene.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Miene created: ' << h1.lvl
  h1.save
  h = Miene.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Miene created: ' << h.lvl
  h.save
  h = Miene.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Miene created: ' << h.lvl
  h.save
  h = Miene.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Miene created: ' << h.lvl
  h.save
  h = Miene.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Miene created: ' << h.lvl
  h.save
  
  puts 'SETTING UP Rathaus'

  h1 = 0
  h1 = Rathaus.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Rathaus created: ' << h1.lvl
  h1.save
  h = Rathaus.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Rathaus created: ' << h.lvl
  h.save
  h = Rathaus.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Rathaus created: ' << h.lvl
  h.save
  h = Rathaus.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Rathaus created: ' << h.lvl
  h.save
  h = Rathaus.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Rathaus created: ' << h.lvl
  h.save