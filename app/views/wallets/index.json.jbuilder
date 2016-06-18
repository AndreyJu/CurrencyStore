json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :wallet_name, :amount, :description, :commission_for_deposit, :commission_for_deduction, :transaction_costs, :max_tranche, :min_tranche, :activity_status
  json.url wallet_url(wallet, format: :json)
end
