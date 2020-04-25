class CreateElementIs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_is do |t|
      t.integer :i_a
      t.integer :i_b
      t.integer :i_c
      t.integer :i_d
      t.integer :i_e
      t.integer :i_f
      t.integer :i_g
      t.integer :i_h
      t.integer :i_i

      t.timestamps
    end
  end
end
