class CreateElementDs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_ds do |t|
      t.integer :d_a
      t.integer :d_b
      t.integer :d_c
      t.integer :d_d
      t.integer :d_e
      t.integer :d_f
      t.integer :d_g
      t.integer :d_h
      t.integer :d_i

      t.timestamps
    end
  end
end
