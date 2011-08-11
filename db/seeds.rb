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


puts 'SETTING UP Woodhouse'

  h1 = 0
  h1 = Woodhouse.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Woodhouse created: ' << h1.lvl
  h1.save
  h = Woodhouse.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Woodhouse created: ' << h.lvl
  h.save
  h = Woodhouse.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Woodhouse created: ' << h.lvl
  h.save
  h = Woodhouse.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Woodhouse created: ' << h.lvl
  h.save
  h = Woodhouse.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Woodhouse created: ' << h.lvl
  h.save
  
  puts 'SETTING UP Pit'
  h1 = 0
  h1 = Pit.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Pit created: ' << h1.lvl
  h1.save
  h = Pit.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Pit created: ' << h.lvl
  h.save
  h = Pit.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Pit created: ' << h.lvl
  h.save
  h = Pit.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Pit created: ' << h.lvl
  h.save
  h = Pit.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Pit created: ' << h.lvl
  h.save
  
  puts 'SETTING UP Mine'

  h1 = 0
  h1 = Mine.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Mine created: ' << h1.lvl
  h1.save
  h = Mine.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Mine created: ' << h.lvl
  h.save
  h = Mine.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Mine created: ' << h.lvl
  h.save
  h = Mine.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Mine created: ' << h.lvl
  h.save
  h = Mine.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Mine created: ' << h.lvl
  h.save
  
  puts 'SETTING UP Hq'

  h1 = 0
  h1 = Hq.create! :lvl => 1 , :points => 5 , :rate => 12 
  puts 'New Hq created: ' << h1.lvl
  h1.save
  h = Hq.create! :lvl => 2 , :points => 12 , :rate => 18 
  puts 'New Hq created: ' << h.lvl
  h.save
  h = Hq.create! :lvl => 3 , :points => 18 , :rate => 24 
  puts 'New Hq created: ' << h.lvl
  h.save
  h = Hq.create! :lvl => 4 , :points => 28 , :rate => 32
  puts 'New Hq created: ' << h.lvl
  h.save
  h = Hq.create! :lvl => 5 , :points => 38 , :rate => 38
  puts 'New Hq created: ' << h.lvl
  h.save