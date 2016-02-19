class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :users, null: false
      t.string :title, null: false, limit: 32

      t.timestamps null: false
    end
  end
end
