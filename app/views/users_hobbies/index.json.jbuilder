json.array!(@users_hobbies) do |users_hobby|
  json.extract! users_hobby, :id
  json.url users_hobby_url(users_hobby, format: :json)
end
