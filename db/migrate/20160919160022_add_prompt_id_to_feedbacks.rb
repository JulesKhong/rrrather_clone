class AddPromptIdToFeedbacks < ActiveRecord::Migration[5.0]
  def change
    change_table :feedbacks do |t|
      t.references :prompt
    end
  end
end
