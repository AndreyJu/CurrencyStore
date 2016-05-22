class CreateCurrencyTypes < ActiveRecord::Migration
  def change
    create_table :currency_types do |t|
      t.string :id_currency
      t.string :currency_type, index: true, default: "", limit: 32
      t.timestamps null: false
    end
  end
end
