json.array!(@budgets) do |budget|
  json.extract! budget, :name, :type, :amount, :repeat, :img
  json.url budget_url(budget, format: :json)
end
