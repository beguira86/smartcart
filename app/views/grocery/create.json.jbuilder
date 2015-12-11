json.grocery do
	json.id @grocery.id
  json.necessity @grocery.necessity
  json.quantity @grocery.quantity
  json.preferred @grocery.preferred
  json.category @grocery.category
  json.title @grocery.title
  json.brand @grocery.brand
  json.house_id @grocery.house_id
  json.units @grocery.units
  if @grocery.quantity < @grocery.preferred
    json.absolute (@grocery.quantity-@grocery.preferred).abs
  end
end