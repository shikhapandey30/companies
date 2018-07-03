json.extract! newcity, :id, :cityname, :state, :created_at, :updated_at
json.url newcity_url(newcity, format: :json)
