class AddNumpreIdToElementG < ActiveRecord::Migration[6.0]
  def change
    add_column :element_gs, :numpre_id, :integer
  end
end
