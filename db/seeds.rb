puts 'Cleaning database...'
Cocktail.destroy_all

puts 'Creating cocktails...'
whiskey_sour = { name: 'whiskey sour' }
borreltje_cola = { name: 'borreltje cola' }
long_island_ice_tea = { name: 'long island ice tea' }
white_russian = { name: 'white russian' }
basil_smash = { name: 'basil smash' }

[whiskey_sour, borreltje_cola, long_island_ice_tea, white_russian, basil_smash].each do |attributes|
  new_cocktail = Cocktail.create!(attributes)
  puts "Created #{new_cocktail.name}"
end
puts 'Finished!'
