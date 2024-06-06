class AddNonreturnableToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :nonreturnable, :boolean
  end
end
