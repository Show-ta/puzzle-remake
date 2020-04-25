class CreateElementCs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_cs do |t|
      t.integer :c_a
      t.integer :c_b
      t.integer :c_c
      t.integer :c_d
      t.integer :c_e
      t.integer :c_f
      t.integer :c_g
      t.integer :c_h
      t.integer :c_i

      t.timestamps
    end
  end
end
