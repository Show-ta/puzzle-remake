class AddQuestionToNumpre < ActiveRecord::Migration[6.0]
  def change
    add_column :numpres, :ques, :text
  end
end
