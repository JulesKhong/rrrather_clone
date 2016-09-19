class CreatePrompts < ActiveRecord::Migration[5.0]
  def change
    create_table :prompts do |t|
      t.string :optionA
      t.string :optionB
      t.integer :votesA
      t.integer :votesB
      t.attachment :imageA
      t.attachment :imageB
      t.string :author
      t.text :description
      t.timestamps
    end
  end
end
