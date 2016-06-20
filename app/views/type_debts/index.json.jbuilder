json.array!(@type_debts) do |type_debt|
  json.extract! type_debt, :id, :type_debt
  json.url type_debt_url(type_debt, format: :json)
end
