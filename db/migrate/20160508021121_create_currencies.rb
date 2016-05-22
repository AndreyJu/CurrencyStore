class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      
      t.belongs_to :wallet, index: true, unique: true, foreign_key: true
      t.belongs_to :currency_type, index: true
      
      t.string     :name, index: true, limit: 64
      t.string     :code, index: true, limit: 16      
      t.integer    :cost, default: 0    
      t.text       :description, default: ""
      t.string     :logo, default: ""
      t.timestamps null: false
    end
  end
end
