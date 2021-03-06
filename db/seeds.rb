# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

sql = ActiveRecord::Base.connection()

sql.execute('TRUNCATE TABLE `categories` ')
Category.create([
    #HOUSING
    { :id => 1, :name => "housing" },
    { :id => 2, :name => 'apts / housing', :parent_id => 1 },
    { :id => 3, :name => 'housing swap', :parent_id => 1 },
    { :id => 4, :name => 'housing wanted', :parent_id => 1 },
    { :id => 5, :name => 'office / commercial', :parent_id => 1 },
    { :id => 6, :name => 'parking / storage', :parent_id => 1 },
    { :id => 7, :name => 'real estate for sale', :parent_id => 1 },
    { :id => 8, :name => 'rooms / shared', :parent_id => 1 },
    { :id => 9, :name => 'sublets / temporary', :parent_id => 1 },
    { :id => 10, :name => 'vacation rentals', :parent_id => 1 },
  
    #FOR SALE
    { :id => 11, :name => "for sale"},
    { :id => 12, :name => 'antiques', :parent_id => 11 },
    { :id => 13, :name => 'baby+kids', :parent_id => 11 },
    { :id => 14, :name => 'barter', :parent_id => 11 },
    { :id => 15, :name => 'bikes', :parent_id => 11 },
    { :id => 16, :name => 'boats', :parent_id => 11 },
    { :id => 17, :name => 'books', :parent_id => 11 },
    { :id => 18, :name => 'business', :parent_id => 11 },
    { :id => 19, :name => 'computer', :parent_id => 11 },
    { :id => 20, :name => 'free', :parent_id => 11 },
    { :id => 21, :name => 'general', :parent_id => 11 },
    { :id => 22, :name => 'household', :parent_id => 11 },
    { :id => 23, :name => 'jewelry', :parent_id => 11 },
    { :id => 24, :name => 'materials', :parent_id => 11 },
    { :id => 25, :name => 'rvs', :parent_id => 11 },
    { :id => 26, :name => 'sporting', :parent_id => 11 },
    { :id => 27, :name => 'tickets', :parent_id => 11 },
    { :id => 28, :name => 'tools', :parent_id => 11 },
    { :id => 29, :name => 'wanted', :parent_id => 11 },
    { :id => 30, :name => 'appliances', :parent_id => 11 },
    { :id => 31, :name => 'arts+crafts', :parent_id => 11 },
    { :id => 32, :name => 'auto parts', :parent_id => 11 },
    { :id => 33, :name => 'beauty+hlth', :parent_id => 11 },
    { :id => 34, :name => 'cars+trucks', :parent_id => 11 },
    { :id => 35, :name => 'cds/dvd/vhs', :parent_id => 11 },
    { :id => 36, :name => 'cell phones', :parent_id => 11 },
    { :id => 37, :name => 'clothes+acc', :parent_id => 11 },
    { :id => 38, :name => 'collectibles', :parent_id => 11 },
    { :id => 39, :name => 'electronics', :parent_id => 11 },
    { :id => 40, :name => 'farm+garden', :parent_id => 11 },
    { :id => 41, :name => 'furniture', :parent_id => 11 },
    { :id => 42, :name => 'garage sale', :parent_id => 11 },
    { :id => 43, :name => 'motorcycles', :parent_id => 11 },
    { :id => 44, :name => 'music instr', :parent_id => 11 },
    { :id => 45, :name => 'photo+video', :parent_id => 11 },
    { :id => 46, :name => 'toys+games', :parent_id => 11 },
    { :id => 47, :name => 'video gaming', :parent_id => 11 },

    #SERVICES
    { :id => 48, :name => "services"},
    { :id => 49, :name => 'beauty', :parent_id => 48 },
    { :id => 50, :name => 'computer', :parent_id => 48 },
    { :id => 51, :name => 'creative', :parent_id => 48 },
    { :id => 52, :name => 'cycle', :parent_id => 48 },
    { :id => 53, :name => 'erotic', :parent_id => 48 },
    { :id => 54, :name => 'event', :parent_id => 48 },
    { :id => 55, :name => 'legal', :parent_id => 48 },
    { :id => 56, :name => 'lessons', :parent_id => 48 },
    { :id => 57, :name => 'marine', :parent_id => 48 },
    { :id => 58, :name => 'pet', :parent_id => 48 },
    { :id => 59, :name => 'automotive', :parent_id => 48 },
    { :id => 60, :name => 'farm+garden', :parent_id => 48 },
    { :id => 61, :name => 'financial', :parent_id => 48 },
    { :id => 62, :name => 'household', :parent_id => 48 },
    { :id => 63, :name => 'labor/move', :parent_id => 48 },
    { :id => 64, :name => 'real estate', :parent_id => 48 },
    { :id => 65, :name => 'skill\'d trade', :parent_id => 48 },
    { :id => 66, :name => 'sm biz ads', :parent_id => 48 },
    { :id => 67, :name => 'therapeutic', :parent_id => 48 },
    { :id => 68, :name => 'travel/vac', :parent_id => 48 },
    { :id => 69, :name => 'write/ed/tr8', :parent_id => 48 },

    #JOBS
    { :id => 70, :name => "jobs"},
    { :id => 71, :name => 'accounting+finance', :parent_id => 70 },
    { :id => 72, :name => 'admin / office', :parent_id => 70 },
    { :id => 73, :name => 'arch / engineering', :parent_id => 70 },
    { :id => 74, :name => 'art / media / design', :parent_id => 70 },
    { :id => 75, :name => 'biotech / science', :parent_id => 70 },
    { :id => 76, :name => 'business / mgmt', :parent_id => 70 },
    { :id => 77, :name => 'customer service', :parent_id => 70 },
    { :id => 78, :name => 'education', :parent_id => 70 },
    { :id => 79, :name => 'food / bev / hosp', :parent_id => 70 },
    { :id => 80, :name => 'general labor', :parent_id => 70 },
    { :id => 81, :name => 'government', :parent_id => 70 },
    { :id => 82, :name => 'human resources', :parent_id => 70 },
    { :id => 83, :name => 'internet engineers', :parent_id => 70 },
    { :id => 84, :name => 'legal / paralegal', :parent_id => 70 },
    { :id => 85, :name => 'manufacturing', :parent_id => 70 },
    { :id => 86, :name => 'marketing / pr / ad', :parent_id => 70 },
    { :id => 87, :name => 'medical / health', :parent_id => 70 },
    { :id => 88, :name => 'nonprofit sector', :parent_id => 70 },
    { :id => 89, :name => 'real estate', :parent_id => 70 },
    { :id => 90, :name => 'retail / wholesale', :parent_id => 70 },
    { :id => 91, :name => 'sales / biz dev', :parent_id => 70 },
    { :id => 92, :name => 'salon / spa / fitness', :parent_id => 70 },
    { :id => 93, :name => 'security', :parent_id => 70 },
    { :id => 94, :name => 'skilled trade / craft', :parent_id => 70 },
    { :id => 95, :name => 'software / qa / dba', :parent_id => 70 },
    { :id => 96, :name => 'systems / network', :parent_id => 70 },
    { :id => 97, :name => 'technical support', :parent_id => 70 },
    { :id => 98, :name => 'transport', :parent_id => 70 },
    { :id => 99, :name => 'tv / film / video', :parent_id => 70 },
    { :id => 100, :name => 'web / info design', :parent_id => 70 },
    { :id => 101, :name => 'writing / editing', :parent_id => 70 },
    { :id => 102, :name => '[ETC]', :parent_id => 70 },
    { :id => 103, :name => '[ part-time ]', :parent_id => 70 }
  ])

sql.execute('TRUNCATE TABLE `locations` ')
Location.create([
    { :id => 1, :name => "Brussels"},
    { :id => 2, :name => "Liege"},
    { :id => 3, :name => "Namur"},
    { :id => 4, :name => "Province Luxembourg"},
    { :id => 5, :name => "Walloon Brabant"},
    { :id => 6, :name => "Hainaut"},
    { :id => 7, :name => "Flemish Brabant"},
    { :id => 8, :name => "West Flanders"},
    { :id => 9, :name => "Limburg"},
    { :id => 10, :name => "East Flanders"},
    { :id => 11, :name => "Antwerpen"},
  ])













