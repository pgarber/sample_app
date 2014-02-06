# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Attribute.create(attribute_name: 'Technical guru', good: 'true', opposite_id: 2)
#Attribute.create(attribute_name: 'Needs to gain experience', good: 'false', opposite_id: 1)
# then run $ rake db:setup
# $ rake db:reset
# $ rake db:populate
# $ rake test:prepare

attribute_list = [
  [ "Technical guru", 'true', 2 ],
  [ "Needs to gain experience", 'false', 1 ],
  [ "Photographic memory", 'true', 4 ],
  [ "Needs better follow up on actions", 'false', 3 ],
  [ "Brilliant", 'true', 6 ],
  [ "Needs to build credibility with employees", 'false', 5 ],
  [ "Big picture thinker", 'true', 8 ],
  [ "Needs to see the forest for the trees", 'false', 7 ],
  [ "Polished presentation", 'true', 10 ],
  [ "Needs more professional presentation", 'false', 9 ],
  [ "CEO potential", 'true', 12 ],
  [ "Needs to demonstrate potential", 'false', 11 ],
  [ "Deserves a promotion", 'true', 14 ],
  [ "Needs a role with a better fit", 'false', 13 ],
  [ "Positive attitude", 'true', 16 ],
  [ "Needs to improve attitude", 'false', 15 ],
  [ "Team player", 'true', 18 ],
  [ "Needs to work more effectively with team", 'false', 17 ],
  [ "Honest", 'true', 20 ],
  [ "Needs to be more forethright in dealings", 'false', 19 ]

]

attribute_list.each do |attribute_name, good, opposite_id|
  Attribute.create( attribute_name: attribute_name, good: good, opposite_id: opposite_id )
end