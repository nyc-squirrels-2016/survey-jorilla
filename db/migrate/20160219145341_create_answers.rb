class CreateAnswers < ActiveRecord::Migration
  def change
     create_table :answers do |t|
      t.references :questions, null: false
      t.references :users, null: false
      t.references :surveys, null: false
      t.references :choices, null: false

      t.timestamps null: false
    end
  end
end
