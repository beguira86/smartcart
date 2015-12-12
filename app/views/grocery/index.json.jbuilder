json.array! @groceries do |grocery|
  json.extract! grocery, :brand, :title, :category, :quantity, :preferred, :necessity, :id, :units, :absolute
end