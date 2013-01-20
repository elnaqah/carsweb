# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cars_models=[{:name=>'Skoda'},
             {:name=>'Honda'},
             {:name=>'Toyota'},
             {:name=>'BMW'},
             {:name=>'KIA'},
             {:name=>'Mercedes-Benz'}
             ]
             
cars_models.each do |md|
  CarModel.create!(md)
end

users=[{:name=>'Ahmed awad'},
             {:name=>'Mohamed moussa'},
             {:name=>'Ahmed ali'},
             {:name=>'Mahmoud ahmed'},
             {:name=>'youssef tarek'},
             {:name=>'Gamal saied'}
             ]
             
users.each do |us|
  User.create!(us)
end

cars=[{:year=>'2008-11-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>true,:abs=>true,:price=>'5000',:car_model_id=>1,:user_id=>1,:used=>true},
{:year=>'2001-10-23',:cylinders=>'1600',:horse_power=>'150',:doors=>'3',:air_bags=>true,:abs=>false,:price=>'58000',:car_model_id=>1,:user_id=>1,:used=>true},
{:year=>'2011-11-22',:cylinders=>'2700',:horse_power=>'450',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'77000',:car_model_id=>2,:user_id=>2,:used=>true},
{:year=>'2007-06-08',:cylinders=>'1600',:horse_power=>'60',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'5000',:car_model_id=>2,:user_id=>2,:used=>true},
{:year=>'2012-05-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'3',:air_bags=>true,:abs=>true,:price=>'80000',:car_model_id=>3,:user_id=>3,:used=>true},
{:year=>'1999-01-22',:cylinders=>'4200',:horse_power=>'500',:doors=>'4',:air_bags=>true,:abs=>true,:price=>'90000',:car_model_id=>3,:user_id=>3,:used=>true},
{:year=>'2002-12-02',:cylinders=>'1600',:horse_power=>'130',:doors=>'3',:air_bags=>true,:abs=>true,:price=>'500000',:car_model_id=>4,:user_id=>4,:used=>true},
{:year=>'2003-07-22',:cylinders=>'2200',:horse_power=>'140',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'58500',:car_model_id=>4,:user_id=>4,:used=>true},
{:year=>'1998-11-22',:cylinders=>'2200',:horse_power=>'350',:doors=>'5',:air_bags=>true,:abs=>false,:price=>'89500',:car_model_id=>5,:user_id=>5,:used=>true},
{:year=>'2006-01-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>false,:abs=>false,:price=>'51000',:car_model_id=>5,:user_id=>5,:used=>true},
{:year=>'2007-03-22',:cylinders=>'2000',:horse_power=>'550',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'100000',:car_model_id=>6,:user_id=>6,:used=>true},
{:year=>'2006-08-28',:cylinders=>'2200',:horse_power=>'230',:doors=>'2',:air_bags=>true,:abs=>false,:price=>'52000',:car_model_id=>6,:user_id=>6,:used=>true},

{:year=>'2013-01-01',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>true,:abs=>true,:price=>'5000',:car_model_id=>1,:user_id=>1,:used=>false},
{:year=>'2013-01-01',:cylinders=>'1600',:horse_power=>'150',:doors=>'3',:air_bags=>true,:abs=>false,:price=>'58000',:car_model_id=>1,:user_id=>1,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2700',:horse_power=>'450',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'77000',:car_model_id=>2,:user_id=>2,:used=>false},
{:year=>'2013-01-01',:cylinders=>'1600',:horse_power=>'60',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'5000',:car_model_id=>2,:user_id=>2,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2000',:horse_power=>'250',:doors=>'3',:air_bags=>true,:abs=>true,:price=>'80000',:car_model_id=>3,:user_id=>3,:used=>false},
{:year=>'2013-01-01',:cylinders=>'4200',:horse_power=>'500',:doors=>'4',:air_bags=>true,:abs=>true,:price=>'90000',:car_model_id=>3,:user_id=>3,:used=>false},
{:year=>'2013-01-01',:cylinders=>'1600',:horse_power=>'130',:doors=>'3',:air_bags=>true,:abs=>true,:price=>'500000',:car_model_id=>4,:user_id=>4,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2200',:horse_power=>'140',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'58500',:car_model_id=>4,:user_id=>4,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2200',:horse_power=>'350',:doors=>'5',:air_bags=>true,:abs=>false,:price=>'89500',:car_model_id=>5,:user_id=>5,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>false,:abs=>false,:price=>'51000',:car_model_id=>5,:user_id=>5,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2000',:horse_power=>'550',:doors=>'4',:air_bags=>false,:abs=>true,:price=>'100000',:car_model_id=>6,:user_id=>6,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2200',:horse_power=>'230',:doors=>'2',:air_bags=>true,:abs=>false,:price=>'52000',:car_model_id=>6,:user_id=>6,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>true,:abs=>true,:price=>'5100',:car_model_id=>1,:user_id=>1,:used=>false},
{:year=>'2013-01-01',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>true,:abs=>true,:price=>'5200',:car_model_id=>1,:user_id=>1,:used=>false}
    ]


cars.each do |c|
Car.create!(c)
end

admin_user={:name=>'admin', :password=>'admin'}
User.create!(admin_user)



