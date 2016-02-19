class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :user, null: false
      t.string :title, null: false, limit: 140
      t.timestamps null: false
    end
  end
end
