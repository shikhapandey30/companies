json.extract! userss, :id, :id, :email, :first_name, :last_name, :company_id, :role_id, :start_date, :end_date, :monthly_charge, :notes, :blob, :image_id, :active, :created_at, :updated_at
json.url userss_url(userss, format: :json)
