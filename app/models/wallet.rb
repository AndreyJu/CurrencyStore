class Wallet < ActiveRecord::Base
  
  has_one  :currency
  has_many :bank_details

  #validates :wallet_name, presence: true, uniqueness: true
  #validates :amount, presence: true
  
  #validates :description,              
  #validates :commission_for_deposit,   
  #validates :commission_for_deduction, 
  #validates :transaction_costs,        
  #validates :max_tranche,              
  #validates :min_tranche, 			       
  #validates :activity_status,          

  #before_save { self.wallet_name = wallet_name.downcase }
end
