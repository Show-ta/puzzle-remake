class AddNumpreIdToElementI < ActiveRecord::Migration[6.0]
  def change
    add_column :element_is, :numpre_id, :integer
  end
end
