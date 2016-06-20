json.array!(@type_accounts) do |type_account|
  json.extract! type_account, :id, :type_account
  json.url type_account_url(type_account, format: :json)
end
