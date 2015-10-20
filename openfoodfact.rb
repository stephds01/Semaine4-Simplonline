require 'open-url'
require 'json'

puts "Entrez un numéro de code Bar"
bar_code = gets.chomp

url= "http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"

json = open(url).read

data = JSON.parse(json)

puts['product']['product_name']
