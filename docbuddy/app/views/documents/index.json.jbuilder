json.array!(@documents) do |document|
  json.extract! document, :id, :name, :color, :wish
  json.url document_url(document, format: :json)
end
