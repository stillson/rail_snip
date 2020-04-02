json.extract! tag_to_snip, :id, :tag_id, :snip_id, :created_at, :updated_at
json.url tag_to_snip_url(tag_to_snip, format: :json)
