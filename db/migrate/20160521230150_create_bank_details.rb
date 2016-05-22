class CreateBankDetails < ActiveRecord::Migration
  def change
    create_table :bank_details do |t|
      
      t.belongs_to :wallet, index: true, foreign_key: true
      
      t.string :bank_details
      t.timestamps null: false
    end
  end
end
