# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cars_models=[{:name=>'Skoda'},{:name=>'Honda'},{:name=>'Toyota'},{:name=>'BMW'},{:name=>'KIA'},{:name=>'Mercedes-Benz'}]


cars_models.each do |cm|
CarModel.create!(cm)
end

skoda=CarModel.where(:name=>'Skoda')
honda=CarModel.where(:name=>'Honda')
toyota=CarModel.where(:name=>'Toyota')
bmw=CarModel.where(:name=>'BMW')
kia=CarModel.where(:name=>'KIA')
mercedes=CarModel.where(:name=>'Mercedes-Benz')
 
car_owners=[{:name=>'Mohamed El-Banna',:tele_number=>'0100559967',:country=>'Egypt',:city=>'PortSaid'},{:name=>'Khaled El-Masry',:tele_number=>'010545454',:country=>'Egypt',:city=>'Giza'},{:name=>'Kareem Sameh',:tele_number=>'010658987',:country=>'Egypt',:city=>'Cairo'},
{:name=>'Moemen',:tele_number=>'010533354',:country=>'Egypt',:city=>'Minya'},
{:name=>'Islam El-Masry',:tele_number=>'010540000',:country=>'Egypt',:city=>'Alex'},

{:name=>'Mostafa Mohamed',:tele_number=>'010544444',:country=>'Egypt',:city=>'Alex'}
]

car_owners.each do |co|
Owner.create!(co)

end
owner1=Owner.where(:id=>1)
owner2=Owner.where(:id=>2)
owner3=Owner.where(:id=>3)
owner4=Owner.where(:id=>4)
owner5=Owner.where(:id=>5)
owner6=Owner.where(:id=>6)

cars=[{:year=>'2008-11-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>true,:abs=>true},{:year=>'2001-10-23',:cylinders=>'1600',:horse_power=>'150',:doors=>'3',:air_bags=>true,:abs=>false},{:year=>'2009-01-02',:cylinders=>'1600',:horse_power=>'350',:doors=>'5',:air_bags=>true,:abs=>true},
{:year=>'2011-11-22',:cylinders=>'2700',:horse_power=>'450',:doors=>'4',:air_bags=>false,:abs=>true},
{:year=>'2007-06-08',:cylinders=>'1600',:horse_power=>'60',:doors=>'4',:air_bags=>false,:abs=>true},
{:year=>'2012-05-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'3',:air_bags=>true,:abs=>true},
{:year=>'1999-01-22',:cylinders=>'4200',:horse_power=>'500',:doors=>'4',:air_bags=>true,:abs=>true},
{:year=>'2002-12-02',:cylinders=>'1600',:horse_power=>'130',:doors=>'3',:air_bags=>true,:abs=>true},
{:year=>'2003-07-22',:cylinders=>'2200',:horse_power=>'140',:doors=>'4',:air_bags=>false,:abs=>true},
{:year=>'1998-11-22',:cylinders=>'2200',:horse_power=>'350',:doors=>'5',:air_bags=>true,:abs=>false},
{:year=>'2006-01-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>false,:abs=>false},
{:year=>'2007-03-22',:cylinders=>'2000',:horse_power=>'550',:doors=>'4',:air_bags=>false,:abs=>true},
{:year=>'2006-08-28',:cylinders=>'2200',:horse_power=>'230',:doors=>'2',:air_bags=>true,:abs=>false},
{:year=>'2006-01-22',:cylinders=>'2000',:horse_power=>'250',:doors=>'2',:air_bags=>false,:abs=>true},
{:year=>'2009-12-27',:cylinders=>'3000',:horse_power=>'450',:doors=>'5',:air_bags=>false,:abs=>true}]

cars_arr1=[]
cars_arr2=[]
cars_arr3=[]
cars_arr4=[]
cars_arr5=[]
cars_arr6=[]
cars.each do |c|
Car.create!(c)


end
cars_arr1<< Car.where(:cylinders='2000')
cars_arr2<< Car.where(:cylinders='1600')
cars_arr3<< Car.where(:cylinders='2200')
cars_arr4<< Car.where(:cylinders='3000')
cars_arr5<< Car.where(:cylinders='4200')
cars_arr6<< Car.where(:cylinders='2700')

owner1.cars<< cars_arr1
owner2.cars<< cars_arr2
owner3.cars<< cars_arr3
owner4.cars<< cars_arr4
owner5.cars<< cars_arr5
owner6.cars<< cars_arr6

skoda.cars<< cars_arr1
honda.cars<< cars_arr2
toyota.cars<< cars_arr3
bmw.cars<< cars_arr4
kia.cars<< cars_arr5
mercedes.cars<< cars_arr6


