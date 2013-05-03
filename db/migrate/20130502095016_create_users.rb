class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.string :from_currency
      t.string :to_currency

      t.timestamps
    end
  end
end
