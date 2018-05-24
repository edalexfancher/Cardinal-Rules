json.extract! post, :id, :address, :city, :state, :zip, :created_at, :updated_at
json.url post_url(post, format: :json)
