class CurrencyType < ActiveRecord::Base
	
  has_many :currencies
	#validates :currency_type
end
