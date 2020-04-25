class AddNumpreIdToElementE < ActiveRecord::Migration[6.0]
  def change
    add_column :element_es, :numpre_id, :integer
  end
end
