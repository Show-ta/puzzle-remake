class AddNumbersToNumpres < ActiveRecord::Migration[6.0]
  def change
    add_column :numpres, :number1, :integer
    add_column :numpres, :number2, :integer
    add_column :numpres, :number3, :integer
    add_column :numpres, :number4, :integer
    add_column :numpres, :number5, :integer
    add_column :numpres, :number6, :integer
    add_column :numpres, :number7, :integer
    add_column :numpres, :number8, :integer
    add_column :numpres, :number9, :integer
  end
end
