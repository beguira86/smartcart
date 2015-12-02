json.array! @groceries do |grocery|
 json.extract! grocery, :brand, :title, :category, :quantity, :preferred

end