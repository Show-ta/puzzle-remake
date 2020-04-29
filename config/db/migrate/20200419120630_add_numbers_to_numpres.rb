class AddNumbersToNumpres < ActiveRecord::Migration[6.0]
  def change
    add_column :numpres, :number1, :text, array:true
    add_column :numpres, :number2, :text, array:true
    add_column :numpres, :number3, :text, array:true
    add_column :numpres, :number4, :text, array:true
    add_column :numpres, :number5, :text, array:true
    add_column :numpres, :number6, :text, array:true
    add_column :numpres, :number7, :text, array:true
    add_column :numpres, :number8, :text, array:true
    add_column :numpres, :number9, :text, array:true
  end
end
