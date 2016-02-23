class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :choice_text, null: false
      t.references :question, null: false
      t.references :survey, null: false
      t.timestamps null: false
    end
  end
end
