json.roommate do
  json.username @roommate.username
  json.access_token @roommate.access_token
  json.email @roommate.email
  json.id @roommate.id
  json.house_id @roommate.home.id
end