class AddNumpreIdToElementC < ActiveRecord::Migration[6.0]
  def change
    add_column :element_cs, :numpre_id, :integer
  end
end
