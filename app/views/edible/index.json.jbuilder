json.array! @edibles do |edible|
 json.extract! edible, :brand, :title, :category, :quantity, :preferred, :necessity, :id, :units

end