class AddQuestionForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_reference :answers, :question, index: true, foreign_key: true
  end
end
