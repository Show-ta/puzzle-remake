class AddNumpreIdToElementA < ActiveRecord::Migration[6.0]
  def change
    add_column :element_as, :numpre_id, :integer
  end
end
