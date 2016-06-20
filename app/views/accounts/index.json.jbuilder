json.array!(@accounts) do |account|
  json.extract! account, :id, :name_account, :amount_account
  json.url account_url(account, format: :json)
end
