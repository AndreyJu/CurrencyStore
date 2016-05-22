json.array!(@currencies) do |currency|
  json.extract! currency, :id, :name, :code, :cost, :valuta, :description, :logo
  json.url currency_url(currency, format: :json)
end
