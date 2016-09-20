class RenameColumnsInPrompt < ActiveRecord::Migration[5.0]
  def change
    rename_column :prompts, :optionA, :option_a
    rename_column :prompts, :optionB, :option_b

    rename_column :prompts, :votesA, :votes_a
    rename_column :prompts, :votesB, :votes_b
  end
end
