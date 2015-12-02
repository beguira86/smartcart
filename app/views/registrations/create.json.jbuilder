json.user do
  json.username @user.username
  json.access_token @user.access_token
  json.email @user.email
end