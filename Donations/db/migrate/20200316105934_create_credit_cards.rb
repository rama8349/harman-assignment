class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.integer :digits
      t.integer :month
      t.integer :year
      t.integer :contributor_id
    end
  end
end
