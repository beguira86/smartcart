json.user do
  json.extract! @user, :username, :access_token
end