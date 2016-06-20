json.array!(@debts) do |debt|
  json.extract! debt, :id, :name_debt, :amount_debt
  json.url debt_url(debt, format: :json)
end
