class AddColumnsToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :accepted, :boolean, default: false
  end
end
