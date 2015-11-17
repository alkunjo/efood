json.array!(@package_details) do |package_detail|
  json.extract! package_detail, :id, :package_id
  json.url package_detail_url(package_detail, format: :json)
end
