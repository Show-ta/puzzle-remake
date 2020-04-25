class CreateElementAs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_as do |t|
      t.integer :a_a
      t.integer :a_b
      t.integer :a_c
      t.integer :a_d
      t.integer :a_e
      t.integer :a_f
      t.integer :a_g
      t.integer :a_h
      t.integer :a_i

      t.timestamps
    end

  end
end
