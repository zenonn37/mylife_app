json.array!(@transactions) do |transaction|
  json.extract! transaction, :index, :new, :edit, :show
  json.url transaction_url(transaction, format: :json)
end
