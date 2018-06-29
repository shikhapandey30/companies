json.extract! company, :id, :Name, :Country_id, :State_id, :City_id, :Postcode, :Start_date, :Active, :created_at, :updated_at
json.url company_url(company, format: :json)
