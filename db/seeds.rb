Errand.destroy_all
Grocery.destroy_all
User.destroy_all
House.destroy_all

# houses
corona = House.create(address: "1367 S Corona St.", city:"Denver", state: "CO", zip: 80210)

#user
jack = User.create(name:"Jack Sypek", house: corona)
ac = User.create(name:"AC Crockett", house: corona)

#errand
sweep = Errand.create(name:"sweep", description: "kitchen needs to be swept", house: corona)

#grocery
detergent = Grocery.create(name:"detergent", house: corona)
