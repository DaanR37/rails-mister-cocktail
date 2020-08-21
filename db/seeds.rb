puts 'Cleaning database...'
Ingredient.destroy_all
Cocktail.destroy_all
puts 'Creating ingredients and cocktails...'

lemon = Ingredient.create(name: 'lemon')
ice = Ingredient.create(name: 'ice')
mint_leaves = Ingredient.create(name: 'mint leaves')

whiskey_sour = Cocktail.create(name: 'whiskey sour')
white_russian = Cocktail.create(name: 'white russian')
basil_smash = Cocktail.create(name: 'basil smash')

x = Dose.create(description: 'Safari, Ice Tea, Vodka', cocktail_id: whiskey_sour.id, ingredient_id: mint_leaves.id)
y = Dose.create(description: 'Vodka, Sprite, Redbull', cocktail_id: whiskey_sour.id, ingredient_id: lemon.id)
z = Dose.create(description: 'Salt, Safari, IceTea', cocktail_id: whiskey_sour.id, ingredient_id: ice.id)
[lemon, ice, mint_leaves].each do |ingredient|
  puts "Created #{ingredient.name}"
end
[whiskey_sour, white_russian, basil_smash].each do |cocktail|
  puts "Created #{cocktail.name}"
end
[x, y, z].each do |dose|
  puts "Create #{dose.description}"
end
puts 'Finished!'
