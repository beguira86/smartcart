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
  json.absolute @grocery.quantity-@grocery.preferred
end