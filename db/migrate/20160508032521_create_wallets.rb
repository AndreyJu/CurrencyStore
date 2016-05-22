class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :wallet_name, default: "", limit: 32
      t.float :amount                    
      t.text  :description, default: ""
      t.float :commission_for_deposit  
      t.float :commission_for_deduction
      t.float :transaction_costs        
      t.float :max_tranche              
      t.float :min_tranche             
      t.boolean :activity_status, default: false

      t.timestamps null: false
    end
  end
end
