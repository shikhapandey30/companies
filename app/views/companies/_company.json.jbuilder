json.extract! company, :id, :Name, :Country, :State, :City, :Postcode, :Startdate, :Active, :created_at, :updated_at
json.url company_url(company, format: :json)
