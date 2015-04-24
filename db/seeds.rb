# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Drink_Type.delete_all
Recipe.delete_all
Component.delete_all
Ingredient.delete_all

# Create initial Users
puts "Creating Drink Types..."
marg = Drink_Type.create(name: "Margarita", 
	description: "citrus and tequila based cocktail")
dark = Drink_Type.create(name: "Dark and Stormy", 
	description: "Rum + Ginger Beer = Yum")
mixshot = Drink_Type.create(name: "Mixed Shot", 
	description: "all the fun without the gag")
shot = Drink_Type.create(name: "Shot", 
	description: "for when you mean business")
old = Drink_Type.create(name: "Old Fashioned", 
	description: "classic cocktail")

# Create initial Recipes
puts "Creating Recipes..."
marg_rec1 = Recipe.create(drink_type_id: marg.id, 
	name: "Margarita on the rocks", 
	num_servings: 4.to_f, 
	instructions: "rub each rocks glass rim with lime and dip in coarse salt. 
	Add ice (fill glass ~3/4). Combine tequila, lime juice, and triple sec, 
	and supefine sugar in cocktail shaker. shake well, pour, garish with lime, 
	and enjoy!")
dns_rec1 = Recipe.create(drink_type_id: dark.id, 
	name: "Dark and Stormy (from Rachael Ray)", 
	num_servings: 1.to_f, 
	instructions: "Fill a 12-ounce glass with ice. Squeeze the lime wedge over 
	the ice in the glass. Drop the wedge into the glass. Pour the rum into the 
	glass. Add the ginger beer. Stir lightly and garnish with another lime wedge, 
	if desired.")
teq_mixshot1 = Recipe.create(drink_type_id: mixshot.id, 
	name: "Crouching Tiger (shooter)", 
	num_servings: 1.to_f, 
	instructions: "combine equal parts silver tequila and lychee liquer")
bf_mixshot1 = Recipe.create(drink_type_id: mixshot.id, 
	name: "Bird Feeder (shooter)", 
	num_servings: 1.to_f, 
	instructions: "combine equal parts Canadian Whisky and Bacardi 151 Rum")
bchata_mixshot = Recipe.create(drink_type_id: mixshot.id, 
	name: "Buttered Chata", 
	num_servings: 1.to_f, 
	instructions: "combine equal parts RumChata and Buttershots")
# = Recipe.create(drink_type_id: , name: , num_servings: , instructions: )

# Create initial Components
puts "Creating Components..."
teq = Component.create(name: "Tequila", alcoholic: true, notes: "")
tripsec = Component.create(name: "Triple Sec", alcoholic: true, 
	notes: "generically: orange flavored liquer")
limej = Component.create(name: "Lime juice", alcoholic: false, 
	notes: "preferrably fresh")
supfinesugar = Component.create(name: "Superfine Sugar", alcoholic: false, 
	notes: "Finer grains dissolve better")
ice = Component.create(name: "Ice", alcoholic: false, notes: "makes it cold")
limegarnish = Component.create(name: "Lime Garnish", alcoholic: false, 
	notes: "can be cut in a variety of shapes: wedges, discs, etc.")
gingerbeer = Component.create(name: "Ginger beer", alcoholic: false, 
	notes: "ginger beer can be alcoholic, but the non-alcoholic type is more
	frequently used when making mixed drinks")

# = Component.create(name: "", alcoholic: , notes: "")

# Create initial Ingredients
puts "Creating Ingredients..."
marg1_teq = Ingredient.create(recipe_id: marg_rec1.id, 
	component_id: teq.id, 
	amount: 1.to_f, unit: "cup")
marg1_tripsec = Ingredient.create(recipe_id: marg_rec1.id, 
	component_id: tripsec.id, 
	amount: 1/3.to_f, unit: "cup")
marg1_limej = Ingredient.create(recipe_id: marg_rec1.id, 
	component_id: limej.id, 
	amount: 2/3.to_f, unit: "cup")
marg1_sugar = Ingredient.create(recipe_id: marg_rec1.id, 
	component_id: supfinesugar.id, 
	amount: 2.to_f, unit: "tsp")
marg1_limeg = Ingredient.create(recipe_id: marg_rec1.id, 
	component_id: limegarnish.id, 
	amount: 4.to_f, unit: "piece")
 # = Ingredient.create(recipe_id: , component_id: , amount: , unit: "")

puts "DB initialization complete."