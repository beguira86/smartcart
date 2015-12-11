json.edible do
	json.id @edible.id
  json.necessity @edible.necessity
  json.quantity @edible.quantity
  json.preferred @edible.preferred
  json.category @edible.category
  json.title @edible.title
  json.brand @edible.brand
  json.house_id @edible.house_id
  json.units @edible.units
  if @edible.quantity < @edible.preferred
    json.absolute (@edible.quantity-@edible.preferred).abs
  end
end