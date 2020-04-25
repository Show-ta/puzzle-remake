class CreateElementFs < ActiveRecord::Migration[6.0]
  def change
    create_table :element_fs do |t|
      t.integer :f_a
      t.integer :f_b
      t.integer :f_c
      t.integer :f_d
      t.integer :f_e
      t.integer :f_f
      t.integer :f_g
      t.integer :f_h
      t.integer :f_i

      t.timestamps
    end
  end
end
