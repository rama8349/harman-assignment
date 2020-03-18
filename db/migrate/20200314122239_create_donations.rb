class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :name
      t.string :amount
      t.string :total_amount
      t.integer :donated_by

      t.timestamps
    end
  end
end
