class AddNumpreIdToElementD < ActiveRecord::Migration[6.0]
  def change
    add_column :element_ds, :numpre_id, :integer
  end
end
