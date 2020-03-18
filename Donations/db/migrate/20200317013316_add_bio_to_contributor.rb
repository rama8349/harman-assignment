class AddBioToContributor < ActiveRecord::Migration[6.0]
  def change
    add_column :contributors, :bio, :text
    add_column :contributors, :price, :decimal
  end
end
