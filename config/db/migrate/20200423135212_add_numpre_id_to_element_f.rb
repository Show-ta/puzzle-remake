class AddNumpreIdToElementF < ActiveRecord::Migration[6.0]
  def change
    add_column :element_fs, :numpre_id, :integer
  end
end
