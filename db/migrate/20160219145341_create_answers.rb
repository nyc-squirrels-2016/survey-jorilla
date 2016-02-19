class CreateAnswers < ActiveRecord::Migration
  def change
     create_table :answers do |t|
      t.references :question, null: false
      t.references :user, null: false
      t.references :survey, null: false
      t.references :choice, null: false
      t.timestamps null: false
    end
  end
end
